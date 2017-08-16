<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="BookingModule.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        p {color:palevioletred; font-size: 200%;
            width: 596px;
        }

        form { 
            margin: 0 auto; 
             width:500px;
         }

        .auto-style40 {
            text-align: center;
        }

        .auto-style38 {
            height: 23px;
            width: 64px;
            text-align: center;
        }
        .auto-style37 {
            width: 89px;
            height: 23px;
            text-align: center;
        }
        
        .auto-style10 {
            width: 88px;
        }
                
        .auto-style32 {
            height: 23px;
            width: 64px;
        }
        .auto-style27 {
            width: 89px;
            height: 23px;
        }
        .auto-style30 {
            width: 55px;
            height: 23px;
        }
        
        .auto-style35 {
            width: 64px;
            height: 26px;
        }
        .auto-style36 {
            width: 89px;
            height: 26px;
        }
        .auto-style20 {
            width: 119px;
            font-weight: 700;
        }
        .auto-style33 {
            width: 64px;
        }

        .auto-style28 {
            width: 89px;
        }
        .auto-style4 {
            width: 239px;
            height: 23px;
            margin-left: 40px;
        }
        .auto-style11 {
            height: 23px;
            width: 88px;
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

        .auto-style5 {
            height: 23px;
        }
        
        .auto-style43 {
            width: 8px;
            font-weight: 700;
        }
        .auto-style44 {
            width: 8px;
        }
        .auto-style46 {
            width: 8px;
            text-align: right;
        }
        .auto-style47 {
            width: 8px;
            height: 23px;
            text-align: right;
        }
        .auto-style48 {
            width: 119px;
        }
        .auto-style49 {
            height: 23px;
            width: 119px;
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
                <td class="auto-style48" >Blood Type</td>
                <td class="auto-style44" >&nbsp;</td>
                <td class="auto-style38">
 
                    Quantity</td>
                <td class="auto-style37">
                    Usage</td>
                <td class="auto-style10" rowspan="11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48" >Blood A+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style46" >:</td>
                <td class="auto-style32">
 
                    <asp:DropDownList ID="ddlAP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAP_SelectedIndexChanged">
                    </asp:DropDownList>
 
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="txtUsageAP" runat="server" Enabled="False">
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
                <td class="auto-style48" >Blood B+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style46" >:</td>
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
                <td class="auto-style48" >Blood O+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style46" >:</td>
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
                <td class="auto-style48">Blood AB+&nbsp;</td>
                <td class="auto-style46">:</td>
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
                <td class="auto-style49">
                    Blood A-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style47">
                    :</td>
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
                <td class="auto-style49">
                    Blood B-&nbsp;&nbsp;</td>
                <td class="auto-style47">
                    :</td>
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
                <td class="auto-style49">
                    Blood O-</td>
                <td class="auto-style47">
                    :</td>
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
                <td class="auto-style49">
                    Blood AB-</td>
                <td class="auto-style47">
                    :</td>
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
                <td class="auto-style48">Bombay</td>
                <td class="auto-style46">:</td>
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
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49">Collection Date</td>
                <td class="auto-style47">:</td>
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
                <td class="auto-style49">Collection Time</td>
                <td class="auto-style47">:</td>
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
                    <asp:Button ID="btnBookBlood" runat="server" 
                        style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Book Blood" Width="147px" OnClick="btnBookBlood_Click" ValidationGroup="AddEvent" PostBackUrl="~/San/ConfirmPurchase.aspx" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
