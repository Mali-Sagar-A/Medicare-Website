<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PaymentDetails.aspx.cs" Inherits="Customer_PaymentDetails" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        Payment Details</p>
    <table  class="auto-style1">
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Payment ID</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lblpayid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order ID</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Payment Date</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lblpaydate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Customer Name</td>
            <td colspan="2" class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">GST</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lblgst" runat="server" Text="18"></asp:Label>
                %</td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Discount</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lbldisc" runat="server" Text="7"></asp:Label>
                %</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Total Amount</td>
            <td colspan="2" class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lbltamount" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Net Amount</td>
            <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                <asp:Label ID="lblnamount" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Payment Method</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="25px" Width="250px">
                    <asp:ListItem Value="2">COD(Cash On Delivery)</asp:ListItem>
                    <asp:ListItem>UPI</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btncon" runat="server" OnClick="btncon_Click" Text="Confirm" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="246px" Width="248px" ImageUrl="~/Images/QR.png" />
            </td>
            <td>
                <asp:Button ID="btnplace" runat="server" Text="Place Order" OnClick="btnplace_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnprint" runat="server" Text="Print Bill" OnClick="btnprint_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </td>
        </tr>
    </table>
</asp:Content>

