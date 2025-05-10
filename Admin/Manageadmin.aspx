<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manageadmin.aspx.cs" Inherits="Admin_Manageadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
        Manage Admin<br />
    </p>
    <table cellpadding="5" class="auto-style1">
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">User Name</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Old Password</td>
            <td>
                <asp:TextBox ID="txtopass" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">New Password</td>
            <td>
                <asp:TextBox ID="txtnpass" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtcpass" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpass" ControlToValidate="txtcpass" ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
    </table>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
    </p>
</asp:Content>

