<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingSummary.aspx.cs" Inherits="BookingModule.BookingSummary" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
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

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
              top: 0px;
              left: -10px;
              height: 27px;
              width: 187px;
          }

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

    </style>
    
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
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Booking Overview</h1>
        <p>
            </p>
        <asp:Panel ID="pnlContents" runat="server">
            <p>
                Order Details</p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="orderID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="66px" Width="316px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
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
                    <asp:SessionParameter DefaultValue="5000" Name="orderID" SessionField="orderID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="text-align: center" Width="342px">
                <Columns>
                    <asp:BoundField DataField="bloodType" HeaderText="Blood Type" SortExpression="bloodType" />
                    <asp:BoundField DataField="orderQty" HeaderText="Order Quantity" SortExpression="orderQty" />
                    <asp:BoundField DataField="usage" HeaderText="Usage" SortExpression="usage" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bloodType], [orderQty], [usage] FROM [BloodOrderList] WHERE ([orderID] = @orderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="orderID" SessionField="orderID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
            <br />
        <br />
        <br />
        <br />
    <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick = "return PrintPanel();" OnClick="btnPrint_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send To Email" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
