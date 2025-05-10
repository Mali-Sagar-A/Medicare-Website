<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width:70%;
        }
        .style2
        {
        }
        .auto-style2 {
        }
        .auto-style3 {
        }
        .auto-style4 {
        }
        .auto-style5 {
        }
        .style8
        {
        }
        .style13
        {
        }
        .style14
        {
        }
        .auto-style6 {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: 30px; font-weight: 600; font-family: sans-serif; text-align: center;">
        FeedBack</p>
    <table class="style1" align="center">
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="25px" Width="250px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="*Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Enter a Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Mobile No</td>
            <td class="style2">
                <asp:TextBox ID="txtmoblie" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmoblie" ErrorMessage="*Mobile No is Required " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmoblie" ErrorMessage="*Enter a Valid Mobile No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Date</td>
            <td class="style2">
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
    <p style="font-family: sans-serif; font-size: 20px; font-weight: 400">
        How satisfied where you with</p></td>
        </tr>
    </table>
    <table cellpadding="5" class="style1" align="center">
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400"></td>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Bad</td>
            <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Good</td>
            <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Better</td>
            <td class="auto-style5" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Excellent</td>
        </tr>
        <tr>
            <td class="style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Product Quality</td>
            <td class="style13">
                <asp:RadioButton ID="rd1" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd2" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd3" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="rd4" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Product Prise</td>
            <td class="style13">
                <asp:RadioButton ID="rd5" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd6" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd7" runat="server"  />
            </td>
            <td>
                <asp:RadioButton ID="rd8" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order Process</td>
            <td class="style13">
                <asp:RadioButton ID="rd9" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd10" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd11" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="rd12" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Delivery Service</td>
            <td class="style13">
                <asp:RadioButton ID="rd13" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd14" runat="server" />
            </td>
            <td class="style14">
                <asp:RadioButton ID="rd15" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="rd16" runat="server" />
            </td>
        </tr>
    </table>
    <table class="style1" align="center">
        <tr>
            <td class="style12" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Feel free to add any other
  
                comments of suggestions</td>
            <td>
                <asp:TextBox ID="txtsug" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Button ID="btnreset" runat="server" Height="30px" OnClick="btnreset_Click" Text="Reset" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Height="30px" OnClick="btnsubmit_Click" Text="Submit" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="style12" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

