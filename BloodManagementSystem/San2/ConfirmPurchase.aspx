<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPurchase.aspx.cs" Inherits="BloodManagementSystem.San.ConfirmPurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            width: 143px;
        }
            
        .auto-style32 {
            height: 23px;
            width: 64px;
            text-align: center;
        }
        .auto-style27 {
            width: 89px;
            height: 23px;
            text-align: center;
        }
        .auto-style30 {
            width: 55px;
            height: 23px;
            text-align: center;
        }
        
        .auto-style35 {
            width: 64px;
            height: 26px;
            text-align: center;
        }
        .auto-style36 {
            width: 89px;
            height: 26px;
            text-align: center;
        }
        .auto-style37 {
            text-align: center;
            width: 88px;
        }
        .auto-style38 {
            width: 88px;
            height: 23px;
            text-align: center;
        }
        .auto-style39 {
            text-align: center;
            width: 88px;
            height: 26px;
        }
        .auto-style40 {
            width: 89px;
            height: 23px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style41 {
            height: 23px;
            width: 64px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style42 {
            text-align: center;
            width: 88px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
    <div>
    
        <h1 aria-disabled="False">Confirm Booking Details</h1>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="101px" Width="449px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="custName" HeaderText="Name" SortExpression="custName" >
                    <HeaderStyle Width="200px" />
                    <ItemStyle Width="500px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="custContactNo" HeaderText="Contact No" SortExpression="custContactNo" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custEmail" HeaderText="Email Address" SortExpression="custEmail" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [custName], [custContactNo], [custAddress], [custEmail] FROM [Customer] WHERE ([custID] = @custID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="custID" SessionField="custID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <br />
    
    </div>
        <h2>
            You have selected </h2>
        <table style="width:49%;">
            <tr>
                <td class="auto-style42" >Blood Type</td>
                <td class="auto-style41">
 
                    Quantity</td>
                <td class="auto-style40">
                    Usage</td>
            </tr>
            <tr>
                <td class="auto-style37" >Blood A+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style32">
 
                    <asp:Label ID="lblQAP" runat="server"></asp:Label>
 
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUAP" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38" >Blood B+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style32">
                    <asp:Label ID="lblQBP" runat="server"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUBP" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style37" >Blood O+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style32">
                    <asp:Label ID="lblQOP" runat="server"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUOP" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">Blood AB+&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style32">
                    <asp:Label ID="lblQABP" runat="server"></asp:Label>
                    </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUABP" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    Blood A-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style30">
                    <asp:Label ID="lblQAN" runat="server"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUAN" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    Blood B-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style30">
                    <asp:Label ID="lblQBN" runat="server"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUBN" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    Blood O-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style30">
                    <asp:Label ID="lblQON" runat="server"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUON" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    Blood AB-&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style30">
                    <asp:Label ID="lblQABN" runat="server"></asp:Label>
                    </td>
                <td class="auto-style27">
                    <asp:Label ID="lblUABN" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Bombay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style35">
                    <asp:Label ID="lblQHH" runat="server"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:Label ID="lblUHH" runat="server"></asp:Label>
                    </td>
            </tr>
        </table>
    
    </div>
        <br />
        <table style="width: 37%;">
            <tr>
                <td class="auto-style4">Collection Date :</td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Collection Time :</td>
                <td>
                    <asp:Label ID="lblTime" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
   
        <br />
        <br />
        <br />
        <br />
   
    <asp:Button ID="btnCancelBook" runat="server" style="border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back" Width="159px" OnClick="btnCancelBooking_Click" />
    <asp:Button ID="btnConfirmBook" runat="server" style="border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Confirm" Width="159px" OnClick="btnConfirmBook_Click" />
 </form>
</body>
</html>
