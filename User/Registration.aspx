<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: 30px; font-weight: 600; font-family: sans-serif; text-align: center;">
        Registration</p>
    <table class="auto-style1" align="center">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtcid" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table cellpadding="5" class="" align="center" width="50%">
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Name</td>
            <td colspan="2" style="margin-left: 40px" class="auto-style2">
                <asp:TextBox ID="txtname" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*Name is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Email</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" Height="25px" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Contact No.</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtcontact" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter Valid Contact No" ValidationExpression="[0-9]{10}" ControlToValidate="txtcontact" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="*Contact Numer is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Address</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtaddd" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaddd" ErrorMessage="*Address is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Gender</td>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">
                <asp:RadioButton ID="rd1" runat="server" Text="Male" />
            </td>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400; text-align: left;">
                <asp:RadioButton ID="rd2" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Age</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtage" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtage" ErrorMessage="*Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Username</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtuname" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuname" ErrorMessage="*User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style2">Password</td>
            <td colspan="2" class="auto-style2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="25px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="*Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click" Text="Reset" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>

