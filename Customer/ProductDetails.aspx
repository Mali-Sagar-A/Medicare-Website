<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="Customer_ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table align="center" cellpadding="5" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                        <asp:Label ID="lblpname" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblbrsnd" runat="server" Text='<%# Eval("Bname") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblpid" runat="server" Text='<%# Eval("Pid") %>' Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("Pimage") %>' Width="250px" />
                    </td>
                    <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Rs.<asp:Label ID="lblprise" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lblpack" runat="server" Text='<%# Eval("Packing") %>'></asp:Label>
                        <br />
                        Of<br />
                        <asp:Label ID="lblunit" runat="server" Text='<%# Eval("Sellingunit") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Available Stock:<asp:Label ID="lblstock" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Category:<asp:Label ID="lblcat" runat="server" Text='<%# Eval("Catname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Key Benefits:<br />
                        <asp:Label ID="lbluses" runat="server" Text='<%# Eval("Puses") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Height="25px" Width="250px">
                            <asp:ListItem>Select Quantity</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Total:<asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="btncart" runat="server" Text="Add To Cart" OnClick="btncart_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Pid] = @Pid)">
        <SelectParameters>
            <asp:SessionParameter Name="Pid" SessionField="pid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

