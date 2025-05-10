<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
          
        }
        .style2
        {            text-align: left;
        }
        .auto-style1 {
            text-align: center;
            height: 34px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            text-align: left;
            height: 34px;
            width: 155px;
        }
        .auto-style4 {
            text-align: center;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
    
        <br />
        <table align="center" class="">
            <tr>
                <td>
    
    <table cellpadding="5" class="style1" align="left">
        <tr>
            <td class="auto-style1" colspan="2" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">Admin Login<hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">&nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Username :</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Password:</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="250px" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="btnlogin" runat="server" Height="30px" Text="Login" Width="150px" OnClick="btnlogin_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" BorderStyle="None" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Height="30px" Text="Reset" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" OnClick="btnreset_Click" BorderStyle="None" />
                <br />
            </td>
        </tr>
    </table>
    
                </td>
            </tr>
        </table>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
