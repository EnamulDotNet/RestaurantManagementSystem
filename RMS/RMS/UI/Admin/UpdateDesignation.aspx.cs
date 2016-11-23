using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RMS.BLL;
using RMS.Model;

namespace RMS.UI.Admin
{
    public partial class UpdateDesignation : System.Web.UI.Page
    {
        private Designation objDesignation;
        private DesignationBiz objDesignationBiz;
        protected void Page_Load(object sender, EventArgs e)
        {
            GvBindDesignation();
        }


        protected void btnUpdateDesignation_Click(object sender, EventArgs e)
        {
            if (EditDesignation())
            {
                GvBindDesignation();
            }
        }

        private void GvBindDesignation()
        {
            objDesignation = new Designation();
            objDesignationBiz = new DesignationBiz();
            DataTable dtDesignation = new DataTable();
            dtDesignation = objDesignationBiz.GetDesignation(txtDesignationSearch.Text.Trim());
            gvDesignation.DataSource = dtDesignation;
            gvDesignation.DataBind();
            gvDesignation.ShowHeaderWhenEmpty = true;
            gvDesignation.EmptyDataText = "No data found!";
        }

        private bool EditDesignation()
        {
            objDesignation = new Designation();
            objDesignationBiz = new DesignationBiz();
            GridViewRow row = gvDesignation.SelectedRow;
            objDesignation.DesignationId = Convert.ToByte(gvDesignation.DataKeys[row.RowIndex].Values[0].ToString());
            objDesignation.DesignationName = txtDesignationNameEdit.Text.Trim();
            objDesignation.IsActive = ddlUserStatus.SelectedValue == "1";
            objDesignation.UpdatedBy = Convert.ToInt16(Session["UserId"]);

            objDesignationBiz.UpdateDesignation(objDesignation);

            return true;
        }

        protected void gvDesignation_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlUpdateDes.Visible = true;
            ddlUserStatus.Items.Clear();
            ddlUserStatus.Items.Insert(0, new ListItem("Active", "1"));
            ddlUserStatus.Items.Insert(1, new ListItem("Inactive", "0"));
            string a = gvDesignation.SelectedRow.Cells[2].Text == "Active" ? "1" : "0";
            txtDesignationNameEdit.Text = gvDesignation.SelectedRow.Cells[1].Text;
            ddlUserStatus.ClearSelection();
            ddlUserStatus.Items.FindByValue(a).Selected = true;
            ModalPopupExtender1.Show();

        }

        protected void gvDesignation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TableCell statusCell = e.Row.Cells[2];
                statusCell.Text = statusCell.Text == "True" ? "Active" : "Inactive";
            }
        }
        
    }
}