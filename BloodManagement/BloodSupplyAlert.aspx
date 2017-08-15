<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodSupplyAlert.aspx.cs" Inherits="BloodManagement.BloodSupplyAlert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 64%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Blood Supply Alert</h1>
        <asp:Panel ID="Panel1" runat="server" Visible="False" Width="574px">
            <h3>&nbsp;Change Critical Value</h3>
            <table class="auto-style2">
                <tr>
                    <td>Blood Type</td>
                    <td>
                        <asp:DropDownList ID="ddlBT" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="bloodType" DataValueField="bloodType" OnSelectedIndexChanged="ddlBT_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Critical Quantity</td>
                    <td>
                        <asp:TextBox ID="tbCQ" runat="server" Enabled="False" Width="98px"></asp:TextBox>
                        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Edit" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSet" runat="server" OnClick="btnSet_Click" Text="Set" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Critical Quantity" />
        <br />
        <h3>Blood Quantity</h3>
    
    </div>
        <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bloodType" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="205px" Width="325px" EnableViewState="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="bloodType" HeaderText="Blood Type" ReadOnly="True" SortExpression="bloodType" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="criticalQty" HeaderText="Critical Quantity" SortExpression="criticalQty" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bloodType], [quantity], [criticalQty] FROM [Blood]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Back To Menu" />
        <br />
    </form>
</body>
</html>
