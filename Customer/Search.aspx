<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Customer_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <table class="auto-style1" align="center">
                            <tr>
                                <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("Pimage") %>' Width="250px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                    <br />
                                    Rs.<asp:Label ID="Label4" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Packing") %>'></asp:Label>
                                    &nbsp;of<asp:Label ID="Label6" runat="server" Text='<%# Eval("Sellingunit") %>'></asp:Label>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" BackColor="#339966" CommandArgument='<%# Eval("Pid") %>' Font-Size="12pt" ForeColor="White" Height="30px" OnClick="Button1_Click" Text="View More" Width="150px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Pname] LIKE '%' + @Pname + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="Pname" SessionField="search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

