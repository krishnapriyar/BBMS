<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingOverview.aspx.cs" Inherits="BookingModule.BookingOverview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <%--   <title></title>--%>
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
   <style>
.button {
  display: inline-block;
  border-radius: 4px;
  border: none;
  text-align: center;
  font-size: 20px;
  padding: 15px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
           top: 2px;
           left: 17px;
           width: 258px;
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
</head>
<body>

    <form id="form1" runat="server">
        <asp:Panel id="pnlContents" runat = "server">
            <h1>Booking Overview</h1>
            <h2>You have seleceted</h2>
            <asp:Label ID="lblSelectedItem" runat="server" Text="Label"></asp:Label>
        <br />
       </asp:Panel>
        <asp:Button ID="Button1" runat="server"  Text="Print" OnClientClick="return PrintPanel()"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Send To Email" />
        <br />
        <br />
        <button class="button" runat="server" style="vertical-align:middle" id="pay"><span>Proceed to Payment</span></button>
    </form>
</body>
</html>
