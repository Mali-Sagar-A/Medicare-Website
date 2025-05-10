<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="User_Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
            text-align: center;
            width: 50%;
        }
        .auto-style6 {
            text-align: left;
            width: 28%;
        }
        .auto-style7 {
            text-align: right;
            width: 22%;
        }
        .auto-style8 {
            text-align: left;
            width: 28%;
        }
        .auto-style9 {
            text-align: right;
            width: 22%;
        }
        .style1{
            width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="auto-style2" colspan="4" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">Contact Us</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Image ID="Image3" runat="server" Height="370px" ImageUrl="~/Images/lawyer_device_2.jpg" style="text-align: center" Width="525px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 600">Give Us Ring</td>
            <td class="auto-style2" colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 600">Email</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Image ID="Image8" runat="server" Height="40px" ImageUrl="~/Images/pngwing.com.png" Width="40px" />
            </td>
            <td class="auto-style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                8208887320</td>
            <td class="auto-style7">
                <asp:Image ID="Image10" runat="server" Height="40px" ImageUrl="~/Images/pngwing.com (1).png" Width="40px" />
            </td>
            <td class="auto-style6" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                malisagar2097@gmail.com</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Image ID="Image9" runat="server" Height="40px" ImageUrl="~/Images/pngwing.com.png" Width="40px" />
            </td>
            <td class="auto-style8" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                8605002168</td>
            <td class="auto-style7">
                <asp:Image ID="Image11" runat="server" Height="40px" ImageUrl="~/Images/pngwing.com (1).png" Width="40px" />
            </td>
            <td class="auto-style6" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                malishubham852@gmail.com</td>
        </tr>
    </table>
</asp:Content>

