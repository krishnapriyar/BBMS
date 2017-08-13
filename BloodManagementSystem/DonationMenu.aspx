<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationMenu.aspx.cs" Inherits="BloodManagementSystem.DonationMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .btn {
          background: #d93434;
          background-image: -webkit-linear-gradient(top, #d93434, #b82b2b);
          background-image: -moz-linear-gradient(top, #d93434, #b82b2b);
          background-image: -ms-linear-gradient(top, #d93434, #b82b2b);
          background-image: -o-linear-gradient(top, #d93434, #b82b2b);
          background-image: linear-gradient(to bottom, #d93434, #b82b2b);
          -webkit-border-radius: 28;
          -moz-border-radius: 28;
          border-radius: 28px;
          font-family: Georgia;
          color: #ffffff;
          font-size: 18px;
          padding: 10px 20px 10px 20px;
          text-decoration: none;
        }

        .btn:hover {
          background: #82c9f5;
          background-image: -webkit-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -moz-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -ms-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -o-linear-gradient(top, #82c9f5, #2497e3);
          background-image: linear-gradient(to bottom, #82c9f5, #2497e3);
          text-decoration: none;
        }
        .auto-style1 {
            width: 255px;
        }
        .btn1 {
          background: #123fb3;
          background-image: -webkit-linear-gradient(top, #123fb3, #002e23);
          background-image: -moz-linear-gradient(top, #123fb3, #002e23);
          background-image: -ms-linear-gradient(top, #123fb3, #002e23);
          background-image: -o-linear-gradient(top, #123fb3, #002e23);
          background-image: linear-gradient(to bottom, #123fb3, #002e23);
          -webkit-border-radius: 28;
          -moz-border-radius: 28;
          border-radius: 28px;
          font-family: Georgia;
          color: #ffffff;
          font-size: 18px;
          padding: 10px 20px 10px 20px;
          text-decoration: none;
        }

        .btn1:hover {
          background: #82c9f5;
          background-image: -webkit-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -moz-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -ms-linear-gradient(top, #82c9f5, #2497e3);
          background-image: -o-linear-gradient(top, #82c9f5, #2497e3);
          background-image: linear-gradient(to bottom, #82c9f5, #2497e3);
          text-decoration: none;
        }
        .auto-style2 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>&nbsp;&nbsp; Donation Menu</h1>
        <h3>
            Welcome,
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </h3>
        <p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
            <asp:Button ID="Button3" runat="server" Text="Manage Donor Details" CssClass="btn" Width="280px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Book A Donation Time" CssClass="btn" Width="280px" PostBackUrl="~/BookDonation.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Button ID="Button2" runat="server" Text="View Past Donations" CssClass="btn" Width="280px" PostBackUrl="~/DonationHistory.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Button ID="Button4" runat="server" Text="Log Out" CssClass="btn1" Width="280px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
