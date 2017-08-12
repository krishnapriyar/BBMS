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
        <p>
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
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Back" />
        </p>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
