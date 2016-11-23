<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="RMS.UI.Admin.CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%--Created by Ataur--%>
    <div class="form-group">
        <label for="username">User Name</label>
        <table>
            <tr>
                
                <td style="width: 400px;">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="userpassword">User Password</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtUserPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="confirmPassword">Confirm Password</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtConfirmPassword" Display="Dynamic" runat="server" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtUserPassword" ErrorMessage="Not matched!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="designation">Designation</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-control" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="0" runat="server" ControlToValidate="ddlDesignation" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="fullName">Full Name</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email!" ForeColor="Red" Display="Dynamic"/>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="phoneNo">Phone No</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <table>
            <tr>
                <td style="width: 400px;">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <div class="form-group">
        <label for="submitbutton"></label>
        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" />
    </div>

</asp:Content>