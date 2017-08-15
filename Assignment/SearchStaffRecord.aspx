<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchStaffRecord.aspx.cs" Inherits="Assignment.SearchStaffRecord" %>

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
    <form id="form1" runat="server">
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
                    <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lblMesg" runat="server"></asp:Label>
         <center>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Staff Maintainance.aspx" Text="Back to Menu" />
            </center>
    </form>
</body>
</html>
