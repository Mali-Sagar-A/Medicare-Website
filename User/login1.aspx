<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="User_login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
        }
        .auto-style2 {
            width: 104px;
            height: 37px;
        }
        .auto-style3 {
            height: 37px;
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        Login</p>
    <table cellpadding="5" class="style1">
        <tr>
            <td class="style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Login</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Username :</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtname" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtpass" runat="server" Width="250px" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="btnlogin" runat="server" Height="30px" Text="Login" Width="150px" OnClick="btnlogin_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnreset" runat="server" Height="35px" Text="Reset" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                Don&#39;t have account?
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/User/Registration.aspx">Create Account</asp:HyperLink>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

