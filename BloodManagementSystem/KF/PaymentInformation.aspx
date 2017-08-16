<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentInformation.aspx.cs" Inherits="BloodManagementSystem.KF.PaymentInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style6 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style1 {
            width: 248px;
        }
        .auto-style2 {
            width: 10px;
        }
        .auto-style3 {
            width: 248px;
            height: 20px;
        }
        .auto-style4 {
            width: 10px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table class="auto-style6">
             <tr>
                <td class="auto-style1">
                    Customer ID:<asp:Label ID="id" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    Order ID:<asp:Label ID="orderid" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Payment Date:<asp:Label ID="PayDate" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    Payment Time:<asp:Label ID="payTime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">You have ordered</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:Label ID="BloodType" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Amount</td>
                <td class="auto-style2">:</td>
                <td>
                    RM :<asp:Label ID="Amount" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Collection Date</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:Label ID="collectionDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Collection Time</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:Label ID="collectionTime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Payment Method</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:Label ID="VISA" runat="server" Text="VISA"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Height="42px" Text="Print Receipt" Width="159px" PostBackUrl="~/KF/Receipt.aspx" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
   
</body>
</html>
