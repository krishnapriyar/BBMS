<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentTransaction.aspx.cs" Inherits="Assignment.PaymentTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 90px;
        }
        .auto-style3 {
            width: 128px;
        }
        .auto-style4 {
            width: 85%;
        }
        .auto-style5 {
            width: 90px;
            height: 18px;
        }
        .auto-style6 {
            width: 11px;
            height: 18px;
        }
        .auto-style7 {
            width: 128px;
            height: 18px;
        }
        .auto-style8 {
            width: 11px;
        }
        .auto-style9 {
            width: 810px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <b>Payment<br />
        <br />
        <br />
        </b>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Customer ID</td>
                <td class="auto-style6">:</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style1">Order ID</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9">Total Amount</td>
            </tr>
            <tr>
                <td class="auto-style1">A-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="AMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="aminprice" runat="server" Text="0"></asp:Label>
                </td>

            </tr>
             <tr>
                <td class="auto-style1">A+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="APLUS" runat="server" Enabled="False"></asp:TextBox>
                 </td>
                 <td class="auto-style9">
                     RM:<asp:Label ID="aplusprice" runat="server" Text="0"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">AB-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ABMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="abminprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">AB+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ABPLUS" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="abplusprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">B-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="BMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="bminprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">B+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="BPLUS" runat="server" Enabled="False"></asp:TextBox>
                 </td>
                 <td class="auto-style9">
                     RM:<asp:Label ID="bplusprice" runat="server" Text="0"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">HH</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="HH" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="hhprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">O-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="OMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="ominprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">O+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="OPLUS" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    RM:<asp:Label ID="oplusprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    Grand Total:</td>
                <td class="auto-style9">
                    RM:<asp:Label ID="grandTotal" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
           
        </table>
        <div>
    
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Confirm" PostBackUrl="~/CreditCard.aspx" />
    
            <br />
    
        </div>
    </form>
        
</body>
</html>
