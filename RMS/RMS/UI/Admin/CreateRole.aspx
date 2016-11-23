<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="CreateRole.aspx.cs" Inherits="RMS.UI.Admin.CreateRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%--Created by Ataur--%>
    <div class="form-group">
        <label for="Role">Role Name</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtRoleName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRoleName" ErrorMessage="Required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    
    <div class="form-group">
        <label for="submitbutton"></label>
        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" />
    </div>

</asp:Content>
