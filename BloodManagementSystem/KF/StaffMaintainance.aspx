<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffMaintainance.aspx.cs" Inherits="BloodManagementSystem.KF.StaffMaintainance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 591px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
                        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Create New Staff Record" Height="58px" Width="242px" PostBackUrl="~/KF/CreateRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2"> 
                        <asp:Button ID="Button2" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Search Staff Record" Height="58px" Width="242px" PostBackUrl="~/KF/SearchStaffRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Update Satff Record" Height="58px" Width="241px" PostBackUrl="~/KF/UpdateRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="View Satff Record" Height="58px" Width="243px" PostBackUrl="~/KF/ViewStaffRecord.aspx" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button5" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Log Out" Width="244px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
    </div>
    </form>
</body>
</html>
