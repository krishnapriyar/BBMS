<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OverviewBooking.aspx.cs" Inherits="BookingModule.OverviewBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 135px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style1 {
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Overview of Booking Details<br />
        <table style="width: 36%;">
            <tr>
                <td class="auto-style2">Customer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style3">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style3">
                    <asp:Label ID="lblContactNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Home Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:Label ID="lblEMail" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            You have selected :</p>
        <p>
            <asp:Label ID="lblSelectBlood" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnCancelBooking" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back To Menu" Width="159px" />
            <asp:Button ID="btnBookBlood" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Proceed To Payment" Width="196px" OnClick="btnBookBlood_Click" />
        </p>
    </form>
</body>
</html>
