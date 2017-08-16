<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmDonation.aspx.cs" Inherits="BloodManagementSystem.ConfirmDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style4 {
            width: 55%;
        }
        .auto-style20 {
            font-size: small;
        }
        .auto-style22 {
            font-size: medium;
            width: 112px;
        }
        .auto-style23 {
            font-size: medium;
        }
        .auto-style24 {
            font-size: medium;
            width: 112px;
            height: 23px;
        }
        .auto-style25 {
            font-size: medium;
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Confirm Donation Time</h1>
        <table class="auto-style4">
            <tr>
                <td>
                    <h3>Donor Details</h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" title="Confirm Donation Time">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="313px" CellPadding="4" CssClass="auto-style23" ForeColor="#333333" GridLines="None">
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
        <table class="auto-style4">
            <tr>
                <td class="auto-style20" colspan="2">
                    <h3>Booking Details</h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    Time</td>
                <td class="auto-style23">
                    :
                    <asp:Label ID="lblTime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    Date</td>
                <td class="auto-style23">
                    :
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    Nurse-In-Charge</td>
                <td class="auto-style25">
                    :
                    <asp:Label ID="lblNurse" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    Venue</td>
                <td class="auto-style25">
                    :
                    <asp:Label ID="lblVenue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            </table>
        <p>
            <asp:Button ID="btnBack" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="btnBack_Click" PostBackUrl="~/BookDonation.aspx" Text="Back" Height="43px" Width="96px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnConfirm" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" runat="server" Text="Confirm" OnClick="btnConfirm_Click" Height="43px" Width="110px" />
        </p>
    
    </div>
    </form>
</body>
</html>
