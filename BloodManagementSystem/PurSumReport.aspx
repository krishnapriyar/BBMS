<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurSumReport.aspx.cs" Inherits="BloodManagementSystem.PurSumReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


INPUT, BUTTON, SELECT, TABLE, BODY, FRAMESET, TEXTAREA {
    font-size: 10pt;
    font-family: "Segoe UI","Helvetica Neue", Helvetica, Arial, sans-serif;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Generate Yearly Summary Report"></asp:Label>
        </h1>
        <p>
            &nbsp;&nbsp;
            Enter Year :&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="108px" ValidationGroup="L"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="btnGen" runat="server" OnClick="btnGen_Click" Text="Generate Report" ValidationGroup="L" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Back" />
            &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="Invalid year!" MaximumValue="2017" MinimumValue="1950" ValidationGroup="L"></asp:RangeValidator>
        </p>
        <p>
            &nbsp;</p>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="869px" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="544px">
            <LocalReport ReportPath="Reports\PurSumReport.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BloodManagementSystem.PSDSTableAdapters.PurchaseSummaryTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="2017" Name="Year" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
