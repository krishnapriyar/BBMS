<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateRecord.aspx.cs" Inherits="BloodManagementSystem.KF.UpdateRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 133px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            width: 6px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style1 {
            width: 133px;
        }
        .auto-style5 {
            width: 6px;
        }
    </style>
    <script src="Script/jquery-3.2.1.js" type="text/javascript"></script>
</head>

<script>
        $(document).ready(function () {
            $('#Update').click(function (e) {
                var isValid = true;
                $('input[type="text"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css(
                            {
                                "border": "1px solid red",
                                "background": "#FFCECE"
                            });
                    }
                    else {
                        $(this).css(
                            {
                                "border": "",
                                "backgroound": ""
                            });
                    }
                }
                );
                if (isValid == false)
                    e.preventDefault();
                else
                    alert('Successful');
            });

        });
 
    </script>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">Staff ID</td>
                <td class="auto-style4">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ID" runat="server" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4"></td>
                <td class="auto-style3">
                    <asp:Button ID="Search" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Search" OnClick="Search_Click" Height="41px" Width="107px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style1">Staff Name</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="Name" runat="server" Width="176px"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">Staff IC</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="IC" runat="server" Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Staff Contact </td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="Contact" runat="server" Width="176px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">Staff Address</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="Address" runat="server" Width="176px"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">Staff Position</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:DropDownList ID="Position" runat="server">
                        <asp:ListItem>Staff</asp:ListItem>
                        <asp:ListItem>Nurse</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style1"></td>
                <td class="auto-style5"></td>
                <td>
                    <asp:Button ID="Update" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Update_Click" Text="Update" Height="42px" Width="107px" />
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    
    </div>
        <asp:Label ID="lblMesg" runat="server" Text="Label"></asp:Label>
        <center>
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" PostBackUrl="~/KF/StaffMaintainance.aspx" Text="Back to Menu" Height="44px" Width="161px" />
            </center>
    </form>
   
</body>
</html>
