<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 60%;
        }
        .style6
        {
           
        }
        .style7
        {
       
        }
        .style5
        {
            
        }
        .style8
        {
            
        }
        .style9
        {
         
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        Enquiry Form</p>
    <table cellpadding="5" class="style1" align="center">
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Enter Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtname" runat="server" Width="250px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*Name Is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Enter Email</td>
            <td class="auto-style2" >
                <asp:TextBox ID="txtemail" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Enter Contact_no</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcont" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Date</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtdate" runat="server" Width="250px" TextMode="Date" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Enter Subject</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtsub" runat="server" Width="250px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsub" ErrorMessage="*Subject Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Enter Enquiry Massage</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtmsg" runat="server" Height="67px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmsg" ErrorMessage="*Write A Message" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Button ID="btnsubmit" runat="server" Height="30px" Text="Submit" Width="150px" OnClick="btnsubmit_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td class="style8">
                <asp:Button ID="btnreset" runat="server" Height="30px" Text="Reset" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

