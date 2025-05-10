<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Myprofile.aspx.cs" Inherits="Customer_Myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 60%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="7" class="auto-style2">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
    <p align="center">
       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Cid" DataSourceID="SqlDataSource1" Height="50px" Width="707px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
            <asp:BoundField DataField="Cemail" HeaderText="Cemail" SortExpression="Cemail" />
            <asp:BoundField DataField="Ccontact" HeaderText="Ccontact" SortExpression="Ccontact" />
            <asp:BoundField DataField="Caddress" HeaderText="Caddress" SortExpression="Caddress" />
            <asp:BoundField DataField="Cgender" HeaderText="Cgender" SortExpression="Cgender" />
            <asp:BoundField DataField="Cage" HeaderText="Cage" SortExpression="Cage" />
            <asp:BoundField DataField="Cusername" HeaderText="Cusername" SortExpression="Cusername" />
            <asp:BoundField DataField="Cpassword" HeaderText="Cpassword" SortExpression="Cpassword" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([Cusername] = @Cusername)" UpdateCommand="update [Customer] set [Cname]=@Cname ,[Cemail]=@Cemail, [Ccontact]=@Ccontact, [Caddress]=@Caddress,[Cage]=@Cage,[Cpassword]=@Cpassword">
        <SelectParameters>
            <asp:SessionParameter Name="Cusername" SessionField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
       </p>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

