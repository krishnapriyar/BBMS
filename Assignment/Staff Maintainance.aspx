<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff Maintainance.aspx.cs" Inherits="Assignment.Staff_Maintainance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 408px;
        }
        .auto-style2 {
            width: 591px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Welcome
                        <asp:Label ID="ManagerName" runat="server" Text="lblManagerName"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Create New Staff Record" Height="58px" Width="180px" PostBackUrl="~/CreateRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Search Staff Record" Height="58px" Width="180px" PostBackUrl="~/SearchStaffRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" Text="Update Satff Record" Height="58px" Width="180px" PostBackUrl="~/UpdateRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" Text="View Satff Record" Height="58px" Width="180px" PostBackUrl="~/ViewStaffRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
    </form>
    </body>
</html>
