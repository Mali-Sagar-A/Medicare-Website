<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Customer_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
       
        }
        .auto-style4 {
         
        }
        .auto-style5 {
         
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p >
        &nbsp;</p>
    <table cellpadding="5" class="" align="center">
        <tr><td colspan="2" style="text-align: center; font-size: x-large; font-weight: 700">Cart Details</td></tr>
        <tr><td colspan="2" style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="Catname" HeaderText="Catname" SortExpression="Catname" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
                <asp:BoundField DataField="Prise" HeaderText="Prise" SortExpression="Prise" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CartDetail] WHERE ([Uname] = @Uname)" DeleteCommand="delete from [CartDetail] where  [pid]=@pid">
            <SelectParameters>
                <asp:SessionParameter Name="Uname" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br /></td></tr>
        <tr>
            <td class="auto-style5">
                <table cellpadding="3" class="auto-style1">
                    <tr>
                        <td colspan="2" class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Shipping Details</td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Name</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Address</td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">City</td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Pin</td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Contact</td>
                        <td>
                            <asp:TextBox ID="txtcontact" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table cellpadding="3" class="auto-style1">
                    <tr>
                        <td colspan="2" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order Details</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order id</td>
                        <td class="auto-style3" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                            <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Customer Name</td>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                            <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order Date</td>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                            <asp:Label ID="lblodate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">Total Amount</td>
                        <td class="auto-style4" style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                            <asp:Label ID="lblamount" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Order Time</td>
                        <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">
                            <asp:Label ID="lblotime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnorder" runat="server" Text="Confirm Order" OnClick="btnorder_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

