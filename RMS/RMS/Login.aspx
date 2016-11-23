<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="col-sm-2 col-sm-offset-5 horizontally-center">
            <div class="form-group">
                <label for="username">Username</label>
                <asp:TextBox ID="txtUserName" runat="server" Width="220px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" Width="220px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="button"></label>
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="110px" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
