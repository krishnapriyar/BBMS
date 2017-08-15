<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRecord.aspx.cs" Inherits="Assignment.CreateRecord" %>

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
    <form id="form1" runat="server">
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
               <textarea id="textarea1" runat="server" class="auto-style3"></textarea>
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
                <asp:Button ID="Btn_Insert" runat="server" OnClick="Btn_Insert_Click" Text="Insert" />
            </td>
        </tr>
       
    </table>
         <center>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Staff Maintainance.aspx" Text="Back to Menu" />
            </center>

    </form>
    </body>
</html>
