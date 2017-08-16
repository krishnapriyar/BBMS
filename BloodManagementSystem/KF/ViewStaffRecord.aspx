<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStaffRecord.aspx.cs" Inherits="BloodManagementSystem.KF.ViewStaffRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 133px;
        }
        .auto-style4 {
            width: 93px;
        }
        .auto-style3 {
            width: 109px;
        }
        .auto-style5 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Staff ID</td>
            <td class="auto-style2">Satff Name</td>
            <td class="auto-style4">IC</td>
            <td class="auto-style3">Phone<br />
                Number</td>
            <td class="auto-style5">Address</td>
            <td>Position</td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="ID" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="IC" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Number" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Address" runat="server" Text="Label"></asp:Label>
            </td>
             <td class="auto-style5">
                <asp:Label ID="Position" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
        <center>
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" PostBackUrl="~/KF/StaffMaintainance.aspx" Text="Back to Menu" Height="46px" Width="150px" />
            </center>
    </form>
    
</body>
</html>
