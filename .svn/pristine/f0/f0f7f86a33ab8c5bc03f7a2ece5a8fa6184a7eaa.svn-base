<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="UpdateRole.aspx.cs" Inherits="RMS.UI.Admin.UpdateRole" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script src="../../Content/AutoComplete/jquery.js"></script>
    <script src="../../Content/AutoComplete/jquery-ui.js"></script>
    <link href="../../Content/AutoComplete/jquery-ui.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <%--Created By Ataur--%>
    <%-- Modified By Rokon --%>

    
    <asp:GridView ID="gvDisplayRoleInfo" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="gvDisplayRoleInfo_PageIndexChanging" OnSelectedIndexChanged="gvDisplayRoleInfo_SelectedIndexChanged" DataKeyNames="RoleId">
        <HeaderStyle CssClass="gvheaderstyle" />
        <RowStyle CssClass="gvrowstyle" />
        <SelectedRowStyle CssClass="gvselectedrowstyle" />
        <AlternatingRowStyle CssClass="gvalternativerowstyle" />
        <Columns>
            <asp:BoundField DataField="RoleName" HeaderText="Role Name" />
            <asp:BoundField DataField="IsActive" HeaderText="Status" HeaderStyle-CssClass="gvcolumnhide" ItemStyle-CssClass="gvcolumnhide">
                <HeaderStyle CssClass="gvcolumnhide"></HeaderStyle>

                <ItemStyle CssClass="gvcolumnhide"></ItemStyle>
            </asp:BoundField>
            <asp:TemplateField HeaderText="Role Status">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToBoolean(Eval("IsActive")) == true ? "Active" : "InActive" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Action" ShowSelectButton="True"  />
        </Columns>
        <PagerSettings Mode="NextPrevious" NextPageText="Next" PreviousPageText="Previous" />
        <PagerStyle BackColor="#000084" BorderColor="Blue" BorderWidth="1" Font-Underline="true" ForeColor="White" Font-Bold="true" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:Button ID="modelPopup" runat="server" style="display:none" />
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="modelPopup" PopupControlID="pnlUpdateRole" CancelControlID="btnCancel" BackgroundCssClass="tableBackground">
    </asp:ModalPopupExtender>


    <asp:Panel ID="pnlUpdateRole" runat="server" Visible="False" BackColor="White" CssClass="updatemodal fade-in fade-out">
        <h3>Update Role</h3>
        <hr />
        <div class="form-group">
            <table>
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="rolename">Role Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRoleName" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        <label for="ddluserrolelist">Role Status</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlUserRoleList" CssClass="form-control" AutoPostBack="False">
                            <asp:ListItem Value="True">Active</asp:ListItem>
                            <asp:ListItem Value="False">Inactive</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ControlToValidate="ddlUserRoleList" InitialValue="0" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        <label for="submitbutton"></label>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </div>

    </asp:Panel>

    <script src="../../Scripts/AutoCompleteTextBox.js"></script>
</asp:Content>
