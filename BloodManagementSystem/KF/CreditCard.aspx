<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreditCard.aspx.cs" Inherits="BloodManagementSystem.KF.CreditCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            width: 167px;
        }
        .auto-style5 {
            width: 2px;
        }
        .auto-style7 {
            width: 1100px;
        }
        .auto-style2 {
            width: 167px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
            width: 2px;
        }
        .auto-style3 {
            height: 20px;
            width: 1100px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        Customer ID:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order ID:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    
        <br />
    
        <br />
    
    </div>
    <table style="width:100%;">
        <tr>
            <td>

                <asp:Label ID="total" runat="server" Text="Label" Visible="False"></asp:Label>

                Payment Date:<asp:Label ID="Date" runat="server" Text="Label"></asp:Label>

            </td>

            <td></td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Payment Time:
                <asp:Label ID="Time" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style4">Card Number</td>
            <td class="auto-style5">:</td>
            <td class="auto-style7">
                <asp:TextBox ID="Card" runat="server" Width="218px"  required ="required" placeholder="wihtout '-'" pattern="^4[0-9]{12}(?:[0-9]{3})?$"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Name on Card</td>
            <td class="auto-style5">:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="218px" required ="required" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Expire Date</td>
            <td class="auto-style5">:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="120px" required ="required" placeholder="MM/YYYY"  pattern="^(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})$"></asp:TextBox>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style2">CCV/CVV</td>
            <td class="auto-style6">:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" Width="82px"  required ="required" placeholder="123"  pattern="^[0-9]{3,4}$"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="Submit" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Button1_Click" Text="Submit" Height="42px" Width="116px" />
    </form>
    </body>
</html>
