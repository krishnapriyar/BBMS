<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodUsageHistory.aspx.cs" Inherits="BloodManagement.BloodUsageHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 106px;
        }
        .auto-style4 {
            width: 90px;
        }
        .auto-style5 {
            width: 35%;
        }
        .auto-style6 {
            width: 106px;
            height: 26px;
        }
        .auto-style7 {
            width: 90px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Track Blood Usage History</h1>
    
    </div>
        <p>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style2">Blood Type: </td>
                    <td class="auto-style4">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem>HH</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Start Date:</td>
                    <td class="auto-style7">
            <asp:TextBox ID="txtStart" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="txtStart_TextChanged" ></asp:TextBox>
                        <%--<asp:RangeValidator ID="rv1" runat="server" ErrorMessage="Invalid Start Date" ControlToValidate="txtStart"></asp:RangeValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">End Date:&nbsp; </td>
                    <td class="auto-style4">
            <asp:TextBox ID="txtEnd" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="txtEnd_TextChanged"></asp:TextBox>
                        <%--<asp:RangeValidator ID="rv2" runat="server" ErrorMessage="Invalid End Date" ControlToValidate="txtEnd"></asp:RangeValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Track" />
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="142px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="400px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="bloodType" HeaderText="Blood Type" SortExpression="bloodType" />
                    <asp:BoundField DataField="usage" HeaderText="Usage" SortExpression="usage" />
                    <asp:BoundField DataField="Total Quantity" HeaderText="Total Quantity" ReadOnly="True" SortExpression="Total Quantity" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BloodOrderList.bloodType, BloodOrderList.usage, SUM(BloodOrderList.orderQty) AS 'Total Quantity'
 FROM BloodOrderList INNER JOIN BloodOrder ON BloodOrderList.orderID = BloodOrder.orderID WHERE (BloodOrderList.bloodType = @bt) AND (BloodOrder.collectionDate &lt;= @endDate) AND (BloodOrder.collectionDate &gt;= @startDate) GROUP BY BloodOrder.collectionDate, BloodOrderList.usage, BloodOrderList.bloodType">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="bt" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="txtEnd" Name="endDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtStart" Name="startDate" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
