using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI.WebControls;
using RMS.BLL;
using RMS.Model;

namespace RMS.UI.Admin
{
    public partial class RoleMenuMapping : System.Web.UI.Page
    {
        private Role objRole;
        private RoleBiz objRoleBiz;
        private List<NavigationMenu> objNavigationMenuList;
        private NavigationMenuBiz objNavigationMenuBiz;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateDropDownForRole();
            }
        }

        private void PopulateDropDownForRole()
        {
            objRole = new Role();
            objRoleBiz = new RoleBiz();

            List<Role> objRoleList = new List<Role>();

            objRoleList = objRoleBiz.GetRoleListForDDL();
            ddlUserRoleList.DataSource = objRoleList;
            ddlUserRoleList.DataTextField = "RoleName";
            ddlUserRoleList.DataValueField = "RoleId";
            ddlUserRoleList.DataBind();

            ddlUserRoleList.Items.Insert(0, new ListItem("--Select Role--", "0"));
        }

        private void GetTreeViewItems(int loginId, int roleId)
        {
            objNavigationMenuList = new List<NavigationMenu>();
            objNavigationMenuBiz = new NavigationMenuBiz();
            objNavigationMenuList = objNavigationMenuBiz.GetMenuTvList(loginId, roleId);

            DataTable table = new DataTable();

            table.Columns.Add("MenuId", typeof(int));
            table.Columns.Add("MenuName", typeof(string));
            table.Columns.Add("ParentId", typeof(int));
            table.Columns.Add("IsActive", typeof(bool));

            foreach (NavigationMenu objMenu in objNavigationMenuList)
            {
                table.Rows.Add(objMenu.MenuId, objMenu.MenuName, objMenu.ParentId, objMenu.IsActive);
            }

            DataSet ds = new DataSet();
            ds.Tables.Add(table);

            ds.Relations.Add("ChildRows", ds.Tables[0].Columns["MenuId"],
                ds.Tables[0].Columns["ParentId"]);

            foreach (DataRow GetParentRows in ds.Tables[0].Rows)
            {
                if (string.IsNullOrEmpty(GetParentRows["ParentId"].ToString()))
                {
                    TreeNode parentTreeNode = new TreeNode();
                    parentTreeNode.Text = GetParentRows["MenuName"].ToString();
                    parentTreeNode.Value = GetParentRows["MenuId"].ToString();

                    if (GetParentRows["IsActive"].Equals(true))
                    {
                        parentTreeNode.Checked = true;
                        parentTreeNode.Expanded = true;
                    }

                    GetChildRows(GetParentRows, parentTreeNode);

                    tvMenuRoleManagement.Nodes.Add(parentTreeNode);
                }
            }
        }

        private void GetChildRows(DataRow dataRow, TreeNode treeNode)
        {
            DataRow[] childRows = dataRow.GetChildRows("ChildRows");
            foreach (DataRow childRow in childRows)
            {
                TreeNode childTreeNode = new TreeNode();
                childTreeNode.Text = childRow["MenuName"].ToString();
                childTreeNode.Value = childRow["MenuId"].ToString();

                if (childRow["IsActive"].Equals(true))
                {
                    childTreeNode.Checked = true;
                }

                treeNode.ChildNodes.Add(childTreeNode);
                if (childRow.GetChildRows("ChildRows").Length > 0)
                {
                    GetChildRows(childRow, childTreeNode);
                    childTreeNode.Expanded = true;
                }
            }
        }

        protected void ddlUserRoleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlUserRoleList.SelectedIndex > 0)
            {
                tvMenuRoleManagement.Nodes.Clear();
                GetTreeViewItems(1, Convert.ToInt32(ddlUserRoleList.SelectedValue));
            }
            else
            {
                tvMenuRoleManagement.Nodes.Clear();
            }
        }
    }
}