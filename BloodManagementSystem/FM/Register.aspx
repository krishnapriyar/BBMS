<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BloodManagementSystem.FM.Register" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
       Select the type of account to register<br />
       <br />
       <asp:Button ID="btnDonor" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Donor" Height="43px" Width="130px" />
       <br />
       <asp:Button ID="btnCustomer" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Customer" Height="41px" Width="129px" />
   </div>

<!-- ModalPopupExtender -->
    <ajx:ModalPopupExtender ID="mpeDonor" runat="server" PopupControlID="panDonorRegistration" TargetControlID="btnDonor"
        CancelControlID="btnDonorClose" BackgroundCssClass="modalBackground">
    </ajx:ModalPopupExtender>
        <asp:Panel ID="panDonorRegistration" runat="server" CssClass="modalPopup" align="center" style ="display:none">
            <table style="width:100%;">
            <tr>
                <td class="auto-style1">Donor Registration Form</td>
            </tr>
            <tr>
                <td class="auto-style1">Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtDonorName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>I.C. No.</td>
                <td>
                    <asp:TextBox ID="txtDonorICNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact No.</td>
                <td>
                    <asp:TextBox ID="txtDonorContactNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtDonorEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Type</td>
                <td>
                    <asp:DropDownList ID="ddlDonorBloodType" runat="server">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>HH</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Account Password</td>
                <td>
                    <asp:TextBox ID="txtDonorPassword" textmode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtConfirmDonorPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td><asp:CompareValidator ControlToCompare="txtConfirmDonorPassword" ControlToValidate="txtDonorPassword" ErrorMessage="The entered password does not match" ID="cvDonorPassword" runat="server"></asp:CompareValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="reset" value="Clear"/>
                    <asp:Button ID="btnDonorSubmit" runat="server" OnClick="btnDonorSubmit_Click" Text="Submit" />
                </td>
            </tr>
            </table>
            <asp:Button ID="btnDonorClose" runat="server" Text="Close" />
        </asp:Panel>
    <ajx:ModalPopupExtender ID="mpeCustomer" runat="server" PopupControlID="panCustomerRegistration" TargetControlID="btnCustomer"
        CancelControlID="btnCustomerClose" BackgroundCssClass="modalBackground">
    </ajx:ModalPopupExtender>
        <asp:Panel ID="panCustomerRegistration" runat="server" CssClass="modalPopup" align="center" style ="display:none">
            <table style="width:100%;">
            <tr>
                <td class="auto-style1">Customer Registration Form</td>
            </tr>
            <tr>
                <td class="auto-style1">Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact No.</td>
                <td>
                    <asp:TextBox ID="txtCustomerContactNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="txtCustomerAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td>Agency Type</td>
                <td>
                    <asp:DropDownList ID="ddlAgencyType" runat="server">
                        <asp:ListItem>Hospital</asp:ListItem>
                        <asp:ListItem>Clinic</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Email Address</td>
                <td>
                    <asp:TextBox ID="txtCustomerEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td>Customer Department</td>
                <td>
                    <asp:TextBox ID="txtCustomerDepartment" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Passsword</td>
                <td>
                    <asp:TextBox ID="txtCustomerPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                     <asp:TextBox ID="txtConfirmCustomerPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:CompareValidator ControlToCompare="txtConfirmCustomerPassword" ControlToValidate="txtCustomerPassword" ErrorMessage="The entered password does not match" ID="cvPassword" runat="server"></asp:CompareValidator></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="reset" value="Clear"/>
                    <asp:Button ID="btnCustomerSubmit" runat="server" OnClick="btnCustomerSubmit_Click" Text="Submit" />
                </td>
            </tr>
        </table>
            <asp:Button ID="btnCustomerClose" runat="server" Text="Close" />
        </asp:Panel>
    <!-- ModalPopupExtender -->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Button ID="btnBack" runat="server" style="margin-left: 51px; text-align: left; border-radius: 8px; padding: 12px 28px; font-weight: bold" Text="Back" PostBackUrl="~/FM/Login.aspx" Height="42px" Width="94px" />
</form>
</body>
</html>

