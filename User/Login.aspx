<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 40%;
        }
        .style2
        {
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
           
        }
        .auto-style4 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        &nbsp;</p>
    <p class="auto-style2" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        Login
    </p>
    <table cellpadding="5" class="style1" align="center">
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Username :</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtname" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Password:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtpass" runat="server" Width="250px" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <br />
                <asp:Button ID="btnlogin" runat="server" Height="30px" Text="Login" Width="150px" OnClick="btnlogin_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Height="30px" Text="Reset" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2" style="font-family: sans-serif; font-size: 15px; font-weight: 400; text-align: center;">
                <br />
                Don&#39;t have account?
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/User/Registration.aspx">Create Account</asp:HyperLink>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

