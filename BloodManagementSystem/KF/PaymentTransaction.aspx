<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentTransaction.aspx.cs" Inherits="BloodManagementSystem.KF.PaymentTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            width: 511px;
            height: 376px;
        }
        .auto-style5 {
            width: 80px;
            height: 18px;
        }
        .auto-style6 {
            width: 8px;
            height: 18px;
        }
        .auto-style7 {
            width: 108px;
            height: 18px;
        }
        .auto-style1 {
            width: 80px;
        }
        .auto-style8 {
            width: 8px;
            text-align: right;
        }
        .auto-style11 {
            width: 80px;
            height: 26px;
            text-align: center;
        }
        .auto-style12 {
            width: 8px;
            height: 26px;
            text-align: right;
        }
        .auto-style17 {
            width: 8px;
            text-align: right;
            height: 23px;
        }
        .auto-style18 {
            width: 80px;
            text-align: center;
            height: 23px;
        }
        .auto-style20 {
            width: 80px;
            height: 23px;
        }
        .auto-style26 {
            width: 130px;
            height: 26px;
            text-align: center;
        }
        .auto-style30 {
            width: 108px;
            height: 26px;
        }
        .auto-style31 {
            width: 130px;
            text-align: center;
        }
        .auto-style32 {
            width: 108px;
            height: 23px;
        }
        .auto-style33 {
            width: 108px;
        }
        .auto-style34 {
            width: 108px;
            text-align: center;
            height: 23px;
        }
        .auto-style35 {
            width: 130px;
        }
        .auto-style36 {
            width: 130px;
            height: 23px;
        }
        .auto-style37 {
            width: 130px;
            text-align: center;
            height: 23px;
        }
        .auto-style38 {
            width: 108px;
            height: 18px;
            text-align: right;
        }
        .auto-style39 {
            width: 8px;
            height: 18px;
            text-align: right;
        }
        .auto-style40 {
            width: 130px;
            text-align: left;
        }
        .auto-style41 {
            width: 80px;
            text-align: center;
        }
        .auto-style43 {
            width: 205px;
        }
        .auto-style44 {
            width: 116px;
        }
        </style>
</head>
<body>
    
    <form id="form2" runat="server">
        <h2>
    <b>Payment</h2>
        </b>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Customer ID</td>
                <td class="auto-style39">:</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style20">Order ID</td>
                <td class="auto-style17">:</td>
                <td class="auto-style32">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Blood Type</strong></td>
                <td class="auto-style17"></td>
                <td class="auto-style34">
                    <strong>Quantity</strong></td>
                <td class="auto-style37"><strong>Total Amount(RM)</strong></td>
            </tr>
            <tr>
                <td class="auto-style41">A-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="AMIN" runat="server" Enabled="False" OnTextChanged="AMIN_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;<asp:Label ID="aminprice" runat="server" Text="0"></asp:Label>
                </td>

            </tr>
             <tr>
                <td class="auto-style41">A+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="APLUS" runat="server" Enabled="False"></asp:TextBox>
                 </td>
                 <td class="auto-style31">
                     &nbsp;<asp:Label ID="aplusprice" runat="server" Text="0"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style41">AB-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="ABMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    <asp:Label ID="abminprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">AB+</td>
                <td class="auto-style12">:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="ABPLUS" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    &nbsp;<asp:Label ID="abplusprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">B-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="BMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;<asp:Label ID="bminprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style41">B+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="BPLUS" runat="server" Enabled="False"></asp:TextBox>
                 </td>
                 <td class="auto-style31">
                     &nbsp;<asp:Label ID="bplusprice" runat="server" Text="0"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style41">HH</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="HH" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;<asp:Label ID="hhprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">O-</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="OMIN" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;<asp:Label ID="ominprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">O+</td>
                <td class="auto-style8">:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="OPLUS" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;<asp:Label ID="oplusprice" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style38">
                    Grand Total:</td>
                <td class="auto-style40">
                    RM <asp:Label ID="grandTotal" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
           
        </table>
        <div>
    
            &nbsp;
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style43">
            <asp:Button ID="Button2" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Confirm" PostBackUrl="~/KF/CreditCard.aspx" Height="41px" Width="111px" />
    
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    
            <br />
    
        </div>
    </form>
        
    </body>
</html>
