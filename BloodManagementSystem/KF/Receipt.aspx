<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="BloodManagementSystem.KF.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 191px;
        }
        .auto-style1 {
            width: 238px;
        }
        .auto-style3 {
            width: 191px;
            height: 20px;
        }
        .auto-style4 {
            width: 238px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            width: 254px;
        }
        .auto-style6 {
            width: 254px;
        }
        .auto-style7 {
            width: 73%;
        }
        .auto-style8 {
            width: 191px;
            height: 23px;
        }
        .auto-style9 {
            width: 238px;
            height: 23px;
        }
        .auto-style10 {
            width: 254px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    <p>Blood Bank Online Purchase Receipt</p>
        <table class="auto-style7">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Date:<asp:Label ID="Date" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style5">Time:<asp:Label ID="Time" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Customer ID:<asp:Label ID="id" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style1">Order ID:<asp:Label ID="orderid" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2">Blood Type</td>
                <td class="auto-style1">Quantity</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="type" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="quantity" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style2">Amount (RM)</td>
                <td class="auto-style1">
                    <asp:Label ID="Total" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            APPROVED ----THANK YOU</p>
        <p>
            ---------IMPORTANT-----------</p>
        <p>
            Retain This Copy For Your Records</p>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
