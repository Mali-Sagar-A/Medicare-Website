<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <table align="center" class="auto-style1">
                            <tr>
                                <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("Pimage") %>' Width="250px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                    <br />
                                    Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
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

