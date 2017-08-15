<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateRecord.aspx.cs" Inherits="Assignment.UpdateRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Script/jquery-3.2.1.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 133px;
        }
        .auto-style2 {
            width: 133px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            width: 6px;
        }
        .auto-style5 {
            width: 6px;
        }
    </style>
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
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
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
                    <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" />
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
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Staff Maintainance.aspx" Text="Back to Menu" />
            </center>
    </form>
</body>
</html>
