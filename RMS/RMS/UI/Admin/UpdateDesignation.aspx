<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="UpdateDesignation.aspx.cs" Inherits="RMS.UI.Admin.UpdateDesignation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../../Content/AutoComplete/jquery.js"></script>
    <script src="../../Content/AutoComplete/jquery-ui.js"></script>
    <link href="../../Content/AutoComplete/jquery-ui.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="form-group">
        <table>
            <tr>
                <td>

                    <label for="txtDesignationSearch">Search&nbsp;</label>
                </td>
                <td style="width: 300px">
                    <asp:TextBox runat="server" ID="txtDesignationSearch" AutoPostBack="True" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>

    <div class="form-group">
        <asp:GridView runat="server" ID="gvDesignation" AutoGenerateColumns="False" DataKeyNames="DesignationId" OnRowDataBound="gvDesignation_RowDataBound" OnSelectedIndexChanged="gvDesignation_SelectedIndexChanged">
            <HeaderStyle CssClass="gvheaderstyle" />
            <RowStyle CssClass="gvrowstyle" />
            <SelectedRowStyle CssClass="gvselectedrowstyle" />
            <AlternatingRowStyle CssClass="gvalternativerowstyle" />
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="DesignationId" />
                <asp:BoundField HeaderText="Designation" DataField="DesignationName" />
                <asp:BoundField HeaderText="Status" DataField="IsActive" />
                <asp:CommandField HeaderText="Action" ButtonType="Button" SelectText="Update" ShowSelectButton="True" CausesValidation="False" />
            </Columns>
            <PagerSettings Mode="NextPrevious" NextPageText="Next" PreviousPageText="Previous" />
            <PagerStyle BackColor="#000084" BorderColor="Blue" BorderWidth="1" Font-Underline="true" ForeColor="White" Font-Bold="true" HorizontalAlign="Center" />
        </asp:GridView>
    </div>

     <asp:Button ID="modelPopup" runat="server" style="display:none" />
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="modelPopup" PopupControlID="pnlUpdateDes" CancelControlID="btnCancel" BackgroundCssClass="tableBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlUpdateDes" runat="server" Visible="False" BackColor="White" CssClass="updatemodal fade-in fade-out">
        <h3>Update Designation</h3>
        <hr />
        <div class="form-group">
            <table>
                
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="designationNameEdit">Designation Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDesignationNameEdit" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ControlToValidate="txtDesignationNameEdit" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        <label for="ddlUserStatus">Status</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlUserStatus" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                
                
                <tr style="height: 45px;">
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="btnUpdateDesignation" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdateDesignation_Click"/>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" CausesValidation="False"/>
                    </td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <script src="../../Scripts/AutoCompleteTextBox.js"></script>
</asp:Content>
