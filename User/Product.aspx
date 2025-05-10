<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="User_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 32px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td style="vertical-align: top">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Catid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <table align="center" cellpadding="3" class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Catname") %>' OnClick="Button1_Click" Text='<%# Eval("Catname") %>' Height="30px" Width="230px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <table align="center" cellpadding="4" class="auto-style1" style="border: 1px solid #000000">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# Eval("Pimage") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Rs:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Pid") %>' Text="View More" OnClick="Button2_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
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

