<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="RMS.UI.Admin.UpdateUser" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Content/AutoComplete/jquery.js"></script>
    <script src="../../Content/AutoComplete/jquery-ui.js"></script>
    <link href="../../Content/AutoComplete/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Created by Enamul--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="form-group">
        <table>
            <tr>
                <td>
                    
                    <label for="txtUserInfoSearch" >Search&nbsp;</label>
                </td>
                <td style="width: 300px">
        <asp:TextBox runat="server" ID="txtUserName" AutoPostBack="True" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
         <asp:gridview runat="server" ID="gvUserInfo" AutoGenerateColumns="False" DataKeyNames="UserId" OnRowDataBound="gvUserInfo_RowDataBound" OnSelectedIndexChanged="gvUserInfo_SelectedIndexChanged">
        <HeaderStyle CssClass="gvheaderstyle" />
        <RowStyle CssClass="gvrowstyle" />
        <SelectedRowStyle CssClass="gvselectedrowstyle" />
        <AlternatingRowStyle CssClass="gvalternativerowstyle" />
             <Columns>
            <asp:BoundField HeaderText="Id" DataField="UserId"/>
            <asp:BoundField HeaderText="Username" DataField="Username"/>
            <asp:BoundField HeaderText="Designation" DataField="DesignationName"/>
            <asp:BoundField HeaderText="Full Name" DataField="UserFullName"/>
            <asp:BoundField HeaderText="Email" DataField="UserEmail"/>
            <asp:BoundField HeaderText="Phone No" DataField="UserPhoneNo"/>
            <asp:BoundField HeaderText="Address" DataField="UserAddress"/>
            <asp:BoundField HeaderText="Status" DataField="IsActive"/>
            <asp:CommandField HeaderText="Action" ButtonType="Button" SelectText="Update" ShowSelectButton="True" CausesValidation="False" />
        </Columns>
              <PagerSettings Mode="NextPrevious" NextPageText="Next" PreviousPageText="Previous" />
        <PagerStyle BackColor="#000084" BorderColor="Blue" BorderWidth="1" Font-Underline="true" ForeColor="White" Font-Bold="true" HorizontalAlign="Center" />
    </asp:gridview>
    </div>
    <asp:Button ID="modelPopup" runat="server" style="display:none" />
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="modelPopup" PopupControlID="pnlUserInfoUpdate" CancelControlID="btnCancel" BackgroundCssClass="tableBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlUserInfoUpdate" runat="server" Visible="False" BackColor="White" CssClass="updatemodal fade-in fade-out">
        <h3>Update User Information</h3>
        <hr />
        <div class="form-group">
            <table>
                
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="userNameEdit">Username</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserNameEdit" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        <label for="ddlUserInfoDesignation">Designation</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlUserInfoDesignation" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="UserFullName">Full Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserFullName" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="userEmail">Email</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="userPhoneNo">Phone No.</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td style="width: 150px;">
                        <label for="userAddress">Address</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        <label for="userInfoStatus">Status</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlUserInfoStatus" CssClass="form-control">
                        <asp:ListItem Text="Active" Value="True"/>
                        <asp:ListItem Text="Inactive" Value="False"/>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 45px;">
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button ID="btnUserInfoUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUserInfoUpdate_Click"/>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" CausesValidation="False"/>
                    </td>
                </tr>
            </table>
        </div>

    </asp:Panel>
    <script src="../../Scripts/AutoCompleteTextBox.js"></script>
</asp:Content>
