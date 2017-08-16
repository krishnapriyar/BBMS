<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignNurse.aspx.cs" Inherits="BloodManagementSystem.San.AssignNurse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            width: 118px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <h1>Assign Nurse To Donor</h1>
    
    </div>
        <h2>Search by:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlSearch" runat="server" OnSelectedIndexChanged="ddlSearch_SelectedIndexChanged" AutoPostBack="True" Height="23px" Width="77px">
                <asp:ListItem>Date</asp:ListItem>
                <asp:ListItem>Donor</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlDsp" runat="server" Height="29px" Width="107px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server"  style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Width="156px" Text="Search Record" OnClick="Button1_Click" />
        </h2>
        <p>
            <asp:Label ID="lblMessage" runat="server" style="font-weight: 700; font-size: medium"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: center" Width="714px" Height="360px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        </p>
        <p>
        </p>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <h2>Booking Details</h2>
            <table style="width: 62%;">
                <tr>
                    <td class="auto-style3">Donor Name</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDonor" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Blood Type</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblBT" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Donation Time</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDT" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Donation Date</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDD" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Venue</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblV" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nurse In Charge</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlStaff" runat="server" Enabled="False" OnSelectedIndexChanged="ddlStaff_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Edit" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button2" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Main Menu" Height="45px" PostBackUrl="~/BloodManagement.aspx" />
            <asp:Button ID="lblConfirm" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Width="147px" OnClick="lblConfirm_Click" Text="Assign Nurse" Height="45px" />
        </asp:Panel>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
