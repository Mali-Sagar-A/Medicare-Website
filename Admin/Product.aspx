<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 37px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="auto-style3" style="font-size: 30px; font-weight: 600; font-family: sans-serif;">
    Add Product</p>
<table class="auto-style1" align="center">
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Product ID</td>
        <td>
            <asp:TextBox ID="pid" runat="server" Enabled="False" Height="25px" Width="250px"></asp:TextBox>
        </td>
        <td rowspan="6">
            <asp:Image ID="pimg" runat="server" Height="150px" Width="200px" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" Height="25px" Width="250px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" Text="Uplode" OnClick="Button8_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Name</td>
        <td>
            <asp:TextBox ID="pname" runat="server" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Categary</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Catname" DataValueField="Catname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="25px" Width="250px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Brand Name</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Bname" DataValueField="Bname" Height="25px" Width="250px" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Brand] WHERE ([catname] = @catname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="catname" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Specification</td>
        <td>
            <asp:TextBox ID="pspe" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Uses</td>
        <td>
            <asp:TextBox ID="puses" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
</table>
<table cellpadding="5" class="auto-style1">
    <tr>
        <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Packaging</td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" OnTextChanged="DropDownList3_TextChanged" Height="25px" Width="250px">
                <asp:ListItem>Tablets</asp:ListItem>
                <asp:ListItem>Syrups</asp:ListItem>
                <asp:ListItem>Powder</asp:ListItem>
                <asp:ListItem>Devices</asp:ListItem>
                <asp:ListItem>Spray</asp:ListItem>
                <asp:ListItem>Gel</asp:ListItem>
                <asp:ListItem>Box</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Unit</td>
        <td class="auto-style2">
            <asp:DropDownList ID="drpsell" runat="server" AutoPostBack="True" Height="25px" Width="250px"  >
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Price</td>
        <td>
            <asp:TextBox ID="pprice" runat="server" Height="25px" Width="250px"></asp:TextBox>
        </td>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Stock</td>
        <td>
            <asp:TextBox ID="pstock" runat="server" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Manufacturing Date</td>
        <td>
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Height="25px" Width="250px"></asp:TextBox>
        </td>
        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Expiry Date</td>
        <td>
            <asp:TextBox ID="txtdate1" runat="server" TextMode="Date" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
<table cellpadding="5" class="auto-style1">
    <tr>
        <td>
            <asp:Button ID="btnadd" runat="server" Height="30px" Text="Add" Width="150px" OnClick="btnadd_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
        <td>
            <asp:Button ID="btnsave" runat="server" Height="30px" Text="Save" Width="150px" OnClick="btnsave_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
        <td>
            <asp:Button ID="btnupdate" runat="server" Height="30px" Text="Update" Width="150px" OnClick="btnupdate_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
        <td>
            <asp:Button ID="btndelete" runat="server" Height="30px" Text="Delete" Width="150px" OnClick="btndelete_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
        <td>
            <asp:Button ID="btncancle" runat="server" Height="30px" Text="Cancle" Width="150px" OnClick="btncancle_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
        </td>
    </tr>
</table>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Catname" HeaderText="Catname" SortExpression="Catname" />
            <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
            <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
            <asp:BoundField DataField="Pimage" HeaderText="Pimage" SortExpression="Pimage" />
            <asp:BoundField DataField="Pspecification" HeaderText="Pspecification" SortExpression="Pspecification" />
            <asp:BoundField DataField="Puses" HeaderText="Puses" SortExpression="Puses" />
            <asp:BoundField DataField="Packing" HeaderText="Packing" SortExpression="Packing" />
            <asp:BoundField DataField="Sellingunit" HeaderText="Sellingunit" SortExpression="Sellingunit" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:BoundField DataField="Mdate" HeaderText="Mdate" SortExpression="Mdate" />
            <asp:BoundField DataField="Edate" HeaderText="Edate" SortExpression="Edate" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</p>
</asp:Content>

