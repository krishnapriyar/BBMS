﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingSummary.aspx.cs" Inherits="BookingModule.BookingSummary" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
            var printWindow = window.open("", "", "height=500,width=1000");
            printWindow.document.write("<html><head><title>Booking Summary</title>");
            printWindow.document.write("</head><body >");
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write("</body></html>");
            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
            prtwin.close();
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
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="orderID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="66px" Width="554px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" >
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="text-align: center" Width="554px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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
            <br />
        </asp:Panel>
            <br />
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/KF/PaymentTransaction.aspx"  class="button" style="vertical-align:middle" Text="Proceed to Payment"></asp:Button>
        <br />
        <br />
    <asp:Button ID="btnPrint" runat="server" OnClientClick = "PrintPanel()" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Print" Height="42px"  />
        &nbsp;
        <asp:Button ID="Button1" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" OnClick="Button1_Click" Text="Send To Email" Height="41px" Width="153px" />
        &nbsp;
        <asp:Button ID="Button3" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back To Menu" Height="43px" Width="150px" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>