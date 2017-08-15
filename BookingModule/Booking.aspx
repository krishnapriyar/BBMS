<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="BookingModule.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 239px;
            height: 23px;
            margin-left: 40px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 179px;
        }
        .auto-style7 {
            width: 149px;
        }
        .auto-style8 {
            width: 179px;
            height: 23px;
        }
        .auto-style9 {
            width: 149px;
            height: 23px;
        }

        p {color:palevioletred; font-size: 200%;
            width: 596px;
        }

        form { 
            margin: 0 auto; 
             width:500px;
         }

        .auto-style10 {
            width: 88px;
        }
        .auto-style11 {
            height: 23px;
            width: 88px;
        }
        .auto-style20 {
            width: 129px;
            font-weight: 700;
        }
        .auto-style27 {
            width: 89px;
            height: 23px;
        }
        .auto-style28 {
            width: 89px;
        }
        .auto-style29 {
            width: 129px;
            height: 23px;
        }
        .auto-style30 {
            width: 55px;
            height: 23px;
        }
        
        .auto-style32 {
            height: 23px;
            width: 64px;
        }
        .auto-style33 {
            width: 64px;
        }

        .auto-style35 {
            width: 64px;
            height: 26px;
        }
        .auto-style36 {
            width: 89px;
            height: 26px;
        }
        .auto-style37 {
            width: 89px;
            height: 23px;
            text-align: center;
        }
        .auto-style38 {
            height: 23px;
            width: 64px;
            text-align: center;
        }
        .auto-style40 {
            text-align: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 454px">
    
        <h1 class="auto-style40">&nbsp;Purchase Blood</h1>
        <br />
        <table style="width:159%;">
            <tr>
                <td >Blood Type</td>
                <td class="auto-style38">
 
                    Quantity</td>
                <td class="auto-style37">
                    Usage</td>
                <td class="auto-style10" rowspan="11">&nbsp;</td>
            </tr>
            <tr>
                <td >Blood A+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:</td>
                <td class="auto-style32">
 
                    <asp:DropDownList ID="ddlAP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAP_SelectedIndexChanged">
                    </asp:DropDownList>
 
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageAP" runat="server" Enabled="False" OnSelectedIndexChanged="txtUsageAP_SelectedIndexChanged">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >Blood B+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:</td>
                <td class="auto-style32">
                    <asp:DropDownList ID="ddlBP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBP_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageBP" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >Blood O+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td class="auto-style32">
                    <asp:DropDownList ID="ddlOP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOP_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageOP" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Blood AB+&nbsp;&nbsp; &nbsp;:</td>
                <td class="auto-style32">
                    <asp:DropDownList ID="ddlABP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlABP_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageABP" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    Blood A-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlAN" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAN_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageAN" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    Blood B-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlBN" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBN_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageBN" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    Blood O-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlON" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlON_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageON" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    Blood AB-&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlABN" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlABN_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageABN" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Bombay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style35">
                    <asp:DropDownList ID="ddlHH" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlHH_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style36">
                    <asp:DropDownList ID="txtUsageHH" runat="server" Enabled="False">
                        <asp:ListItem>Whole Blood</asp:ListItem>
                        <asp:ListItem>Red Cell Concentrate</asp:ListItem>
                        <asp:ListItem>Red Cell Suspension</asp:ListItem>
                        <asp:ListItem>Leucocyte-Depleted Red Cells</asp:ListItem>
                        <asp:ListItem>Platelet Concentrates</asp:ListItem>
                        <asp:ListItem>Frozen Plasma</asp:ListItem>
                        <asp:ListItem>Liquid Plasma</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Collection Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="txtCollectDate" runat="server" TextMode="Date" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Required Field!" Text="Required Field!"
                        ControlToValidate="txtCollectDate" ValidationGroup="AddEvent" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RangeValidator ID="rgvDate" runat="server" ErrorMessage="Invalid Selection"
                        text="" ValidationGroup="AddEvent" ControlToValidate="txtCollectDate" Type="Date"  Font-Bold="False" SetFocusOnError="True"></asp:RangeValidator>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style29">Collection Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" colspan="2" title="Blood Booking">
                    <asp:DropDownList ID="ddlHrs" runat="server">
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;Hours
                    <asp:DropDownList ID="ddlMins" runat="server">
                        <asp:ListItem Value="00"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="45"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;mins</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                    
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnCancelBooking" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Cancel Booking" Width="159px" OnClick="btnCancelBooking_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnBookBlood" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Book Blood" Width="147px" OnClick="btnBookBlood_Click" ValidationGroup="AddEvent" PostBackUrl="~/ConfirmPurchase.aspx" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
