<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="BookingSummary1.aspx.cs" Inherits="BloodManagementSystem.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
    <style type="text/css">

          .button {
          display: inline-block;
          border-radius: 4px;
          border: none;
          text-align: center;
          font-size: 20px;
          padding: 15px;
          width: 250px;
          transition: all 0.5s;
          cursor: pointer;
          margin: 5px;
        }

        </style>
</head>
<body>
    <form id="form1" runat = "server">
        <h1>Booking Overview</h1>
    <asp:Panel id="pnlContents" runat = "server">
        <h3>Order Details</h3>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="orderID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="66px" Width="554px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="orderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="orderID">
                <HeaderStyle Width="150px" />
                <ItemStyle Width="300px" />
                </asp:BoundField>
                <asp:BoundField DataField="collectionTime" DataFormatString="{0:t}" HeaderText="Collection Time" HtmlEncode="False" SortExpression="collectionTime" />
                <asp:BoundField DataField="collectionDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Collection Date" SortExpression="collectionDate" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderID], [collectionDate], [collectionTime] FROM [BloodOrder] WHERE ([orderID] = @orderID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="orderID" SessionField="orderID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" style="text-align: center" Width="554px">
            <Columns>
                <asp:BoundField DataField="bloodType" HeaderText="Blood Type" SortExpression="bloodType" />
                <asp:BoundField DataField="orderQty" HeaderText="Order Quantity" SortExpression="orderQty" />
                <asp:BoundField DataField="usage" HeaderText="Usage" SortExpression="usage" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bloodType], [orderQty], [usage] FROM [BloodOrderList] WHERE ([orderID] = @orderID)">
            <SelectParameters>
                <asp:SessionParameter Name="orderID" SessionField="orderID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/KF/PaymentTransaction.aspx"  class="button" style="vertical-align:middle" Text="Proceed to Payment"></asp:Button>
    <br />
        <br />
    <asp:Button ID="btnPrint" runat="server" OnClientClick = "return PrintPanel();" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Print" Height="42px"  />
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Button1_Click" Text="Send To Email" Height="41px" Width="153px" />
        <asp:Button ID="Button3" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back To Menu" Height="43px" Width="150px" />
    </form>
</body>
</html>