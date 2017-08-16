<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BloodManagementSystem.FM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /*div {
  position: absolute;
  width: 300px;
  height: 200px;
  z-index: 15;
  top: 50%;
  left: 50%;
  margin: -100px 0 0 -150px;

}*/

        .auto-style1 {
            left: 50%;
            top: 50%;
            width: 403px;
            height: 289px;
        }
        .auto-style2 {
            left: 37%;
            top: 48%;
            width: 347px;
            height: 209px;
            text-align: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1>Login Page</h1>
        <br />
        <br />
        <div class="auto-style2">
            <h3>Please Enter Login Details</h3>
            <br />
            User ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserID" placeholder="User ID" runat="server"></asp:TextBox>
            <br />
            Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" placeholder="Password" textmode="Password" runat="server" style="margin-top: 0px"></asp:TextBox>
    
            <br />
    
            <br />
            <asp:Button ID="btnBack" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back" Height="45px" Width="117px" />
            <asp:Button ID="btnLogin" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Login" OnClick="btnLogin_Click" Height="46px" />
            <br />
            <br />
            <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx">Register new account</asp:HyperLink>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>