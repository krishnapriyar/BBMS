<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDonation.aspx.cs" Inherits="BloodManagementSystem.BookDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book a Donation Time</title>
    <style type="text/css">

        .auto-style4 {
            width: 55%;
        }
        .auto-style1 {
            height: 23px;
        }
        .auto-style9 {
            width: 74%;
            height: 63px;
        }
        .auto-style18 {
            height: 23px;
            width: 51px;
        }
        .auto-style14 {
            height: 23px;
            width: 342px;
        }
        .auto-style19 {
            width: 51px;
        }
        .auto-style15 {
            width: 342px;
        }
        .auto-style20 {
            font-size: small;
        }
        .auto-style22 {
            width: 51px;
            height: 68px;
        }
        .auto-style23 {
            width: 342px;
            height: 68px;
        }
        .auto-style24 {
            font-size: medium;
        }
        .auto-style25 {
            height: 28px;
        }
        .auto-style26 {
            color: #FF3300;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Book A Donation Time<br />
        </h1>
        <table class="auto-style4">
            <tr>
                <td>
                    <h3>Donor Details</h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><em>*If you wish to change donor details, please do so from the <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BookDonation.aspx">Donor</asp:HyperLink>
                     &nbsp;page</em></td>
            </tr>
            <tr>
                <td class="auto-style20">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="313px" CellPadding="4" OnPageIndexChanging="DetailsView1_PageIndexChanging" CssClass="auto-style24" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="donorName" HeaderText="Name" SortExpression="donorName" />
                    <asp:BoundField DataField="donorIC" HeaderText="IC no" SortExpression="donorIC" />
                    <asp:BoundField DataField="donorContact" HeaderText="Contact " SortExpression="donorContact" />
                    <asp:BoundField DataField="bloodType" HeaderText="Blood Type" SortExpression="bloodType" />
                    <asp:BoundField DataField="donorEmail" HeaderText="Email" SortExpression="donorEmail" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
                    <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [donorName], [donorIC], [donorContact], [bloodType], [donorEmail] FROM [Donor] WHERE ([donorID] = @donorID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="3001" Name="donorID" SessionField="donorID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                </td>
            </tr>
            </table>
        </div>
        <div id="selectSession">
        <table class="auto-style9">
            <tr>
                <td class="auto-style1" colspan="2">
                    <h4>Choose the prefered time and date for your donation session:</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Time</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlHours" runat="server" >
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                    </asp:DropDownList>
&nbsp;Hours
                    <asp:DropDownList ID="ddlMinutes" runat="server">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                    </asp:DropDownList>

                    &nbsp;Minutes<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Donation date is required!" Text="*"
                        ControlToValidate="ddlMinutes" ValidationGroup="AddEvent"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Donation time is required!" Text=""
                        ControlToValidate="ddlHours" ValidationGroup="AddEvent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Date</td>
                <td class="auto-style23">
                    <asp:TextBox ID="tbDate" runat="server" TextMode="Date" ToolTip="Choose your preferred donation date" Width="164px" OnTextChanged="tbDate_TextChanged"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Donation date is required" Text="*"
                        ControlToValidate="tbDate" ValidationGroup="AddEvent"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RangeValidator ID="rgvDate" runat="server" ErrorMessage="Invalid Selection"
                        text="" ValidationGroup="AddEvent" ControlToValidate="tbDate" Type="Date"  Font-Bold="False" SetFocusOnError="True"></asp:RangeValidator>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2"><strong>
                    <asp:Label ID="lblNot" runat="server" CssClass="auto-style26" Visible="False"></asp:Label>
                    &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DonationHistory.aspx" Visible="False">View Details</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style19">Last Donation Date</td>
                <td class="auto-style15">
                    :
            <asp:Label ID="lblLastDonation" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Earliest Eligible Date</td>
                <td>: <asp:Label ID="lblEligibleDon" runat="server"></asp:Label>
                &nbsp;</td>
            </tr>
        </table>
        <br />
            <asp:Button ID="btnBack" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" EnableViewState="False" Text="Back to Menu" PostBackUrl="~/DonationMenu.aspx" Height="43px" Width="146px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBook" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Book" PostBackUrl="~/ConfirmDonation.aspx" ValidationGroup="AddEvent" Height="41px" Width="92px" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
