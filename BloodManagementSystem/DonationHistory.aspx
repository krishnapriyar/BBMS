<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationHistory.aspx.cs" Inherits="BloodManagementSystem.DonationHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            margin-right: 20px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Donation History</h1>
        <h3>
            Upcoming Donation Booking</h3>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="294px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="donationTime" DataFormatString="{0:t}" HeaderText="Time" SortExpression="donationTime" />
                    <asp:BoundField DataField="donationDate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="donationDate" />
                    <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                    <asp:BoundField DataField="staffName" HeaderText="Nurse In Charge" SortExpression="staffName" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT        Donation.donationTime, Donation.donationDate, Donation.venue, Staff.staffName
FROM            Donation INNER JOIN
                         Staff ON Donation.staffID = Staff.staffID
WHERE donationDate &gt; GETDATE()
AND donorID = @donorID">
                <SelectParameters>
                    <asp:SessionParameter DbType="Int32" Name="donorID" SessionField="donorID" />
                </SelectParameters>
            </asp:SqlDataSource>
        <h3>
            Past Donations</h3>
        <div class="auto-style2" title="Donation History">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="431px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="donationTime" DataFormatString="{0:T}" HeaderText="Time" SortExpression="donationTime" />
                        <asp:BoundField DataField="donationDate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="donationDate" />
                        <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                        <asp:BoundField DataField="unitOfBlood" HeaderText="Units Donated" SortExpression="unitOfBlood" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        No Past Donations Found
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [donationTime], [donationDate], [venue], [unitOfBlood] FROM [Donation] WHERE ([donorID] = @donorID) AND [donationDate] &lt; getdate();">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="3002" Name="donorID" SessionField="donorID" />
                </SelectParameters>
            </asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back To Menu" PostBackUrl="~/DonationMenu.aspx" Height="42px" Width="151px" />
        </p>
    
    </div>
    </form>
</body>
</html>
