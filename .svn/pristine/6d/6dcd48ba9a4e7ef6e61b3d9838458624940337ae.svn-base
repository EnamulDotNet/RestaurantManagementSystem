<%@ Page Title="" Language="C#" MasterPageFile="~/Rms.Master" AutoEventWireup="true" CodeBehind="CreateDesignation.aspx.cs" Inherits="RMS.UI.Admin.CreateDesignation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <%---Created by Ataur--%>
   
        <div class="form-group">
            <label for="designationNameAdd">Designation Name</label>
            <table>
                <tr>
                    <td style="width: 400px;">
                        <asp:TextBox ID="txtDesignationNameAdd" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDesignationNameAdd" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>

        <div class="form-group">

            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" />
        </div>
</asp:Content>
