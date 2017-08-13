<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationSummary.aspx.cs" Inherits="BloodManagementSystem.DonationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Donation Booking Summary</h1>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="375px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="donorName" HeaderText="Name" SortExpression="donorName" />
                <asp:BoundField DataField="donorContact" HeaderText="Contact No" SortExpression="donorContact" />
                <asp:BoundField DataField="donorEmail" HeaderText="Email" SortExpression="donorEmail" />
                <asp:BoundField DataField="bloodType" HeaderText="Blood Type" SortExpression="bloodType" />
                <asp:BoundField DataField="donationTime" DataFormatString="{0:t}" HeaderText="Donation Time" SortExpression="donationTime" />
                <asp:BoundField DataField="donationDate" DataFormatString="{0:d}" HeaderText="Donation Date" SortExpression="donationDate" />
                <asp:BoundField DataField="staffName" HeaderText="Nurse In Charge" SortExpression="staffName" />
                <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Donor.donorName, Donor.donorContact, Donor.donorEmail, Donor.bloodType, Donation.donationTime, Donation.donationDate, Staff.staffName, Donation.venue FROM Donation INNER JOIN Donor ON Donation.donorID = Donor.donorID INNER JOIN Staff ON Donation.staffID = Staff.staffID
WHERE donationID = @donationID">
            <SelectParameters>
                <asp:SessionParameter Name="donationID" SessionField="donationID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Back To Menu" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/DonationHistory.aspx" Text="View Donation History" />
        <br />
    
    </div>
    </form>
</body>
</html>
