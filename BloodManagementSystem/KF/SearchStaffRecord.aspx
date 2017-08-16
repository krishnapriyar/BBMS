<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchStaffRecord.aspx.cs" Inherits="BloodManagementSystem.KF.SearchStaffRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 14px;
        }
        .auto-style3 {
            width: 185px;
            height: 20px;
        }
        .auto-style4 {
            width: 14px;
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
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Staff ID</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="ID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Search" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Search_Click" Text="Search" Height="41px" Width="105px" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lblMesg" runat="server"></asp:Label>
         <center>
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" PostBackUrl="~/KF/StaffMaintainance.aspx" Text="Back to Menu" Height="44px" Width="149px" />
            </center>
    </form>
  
</body>
</html>
