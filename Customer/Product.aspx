<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Customer_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="auto-style1">
        <tr>
            <td style="vertical-align:top">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Catid" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table cellpadding="5" class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text='<%# Eval("Catname") %>' CommandArgument='<%# Eval("Catname") %>' Height="35px" Width="230px" BackColor="#339966" Font-Size="12pt" ForeColor="White" BorderStyle="None" />
                                </td>
                            </tr>
                        </table>
                        
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="3" CellSpacing="2" ForeColor="Black" GridLines="Both">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <table align="center" cellpadding="5" class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Pimage") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: sans-serif; font-size: 20px; font-weight: 400" class="auto-style3">Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Pid") %>' Text="View More" OnClick="Button2_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Catname] = @Catname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Catname" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

