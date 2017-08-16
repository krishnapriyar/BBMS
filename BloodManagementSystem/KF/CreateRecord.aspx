<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRecord.aspx.cs" Inherits="BloodManagementSystem.KF.CreateRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 171px;
        }
        .auto-style2 {
            width: 10px;
        }
        .auto-style3 {
            height: 66px;
            width: 221px;
        }
    </style>
    <script src="Script/jquery-3.2.1.js" type="text/javascript"></script>
</head>
    <script>
        $(document).ready(function () {
            $('#Btn_Insert').click(function (e) {
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
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Staff Name:</td>
            <td class="auto-style2">:</td>
            <td>
                <asp:TextBox ID="Name" runat="server" Width="212px"  ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Staff IC</td>
            <td class="auto-style2">:</td>
            <td>
                <asp:TextBox ID="IC" runat="server" Width="212px"  placeholder="928648-56-2323"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Contact Number</td>
            <td class="auto-style2">:</td>
            <td>
                <asp:TextBox ID="Number" runat="server" Width="212px"  placeholder="0183434555"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">Address</td>
            <td class="auto-style2">:</td>
            <td>
               <textarea id="textarea1" runat="server" class="auto-style3" cols="20" name="S1" rows="1"></textarea>
             </td>
        </tr>
        <tr>
            <td class="auto-style1">Staff Position</td>
            <td class="auto-style2">:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Staff</asp:ListItem>
                    <asp:ListItem>Nurse</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Btn_Insert" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Btn_Insert_Click" Text="Insert" Height="44px" Width="97px" />
            </td>
        </tr>
       
    </table>
         <center>
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" PostBackUrl="~/Staff Maintainance.aspx" Text="Back to Menu" OnClick="Button1_Click" Height="42px" Width="146px" />
            </center>

    </form>
    
</body>
</html>
