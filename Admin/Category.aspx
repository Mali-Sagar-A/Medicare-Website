<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 47px;
            width: 836px;
        }
        .auto-style4 {
            width: 110px;
        }
        .auto-style5 {
            width: 836px;
        }
        .auto-style7 {
            width: 71px;
        }
        .auto-style8 {
            width: 111px;
        }
        .auto-style9 {
            width: 6px;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table cellpadding="5" class="auto-style1">
        <tr>
            <td class="auto-style3">
                <table class="auto-style1" style="width: 136%">
                    <tr>
                        <td style="font-size: 30px; font-weight: 600; font-family: sans-serif;" class="auto-style10">Add Category</td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="5" class="auto-style1">
                                <tr>
                                    <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Category ID</td>
                                    <td>
                                        <asp:TextBox ID="txtid" runat="server" Height="25px" Width="250px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="txtimg" runat="server" Height="150px" Width="200px" />
                                        <br />
                                        <br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="250px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnuplode" runat="server" Text="Uplode" OnClick="btnuplode_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Name</td>
                                    <td>
                                        <asp:TextBox ID="txtname" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Discription</td>
                                    <td>
                                        <asp:TextBox ID="txtdisc" runat="server" Height="45px" TextMode="MultiLine" Width="247px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <table cellpadding="5" class="auto-style1" style="width: 100%; height: 57px">
                    <tr>
                        <td class="auto-style7">
                            <asp:Button ID="btnadd" runat="server" Height="30px"  Text="Add" Width="150px" OnClick="btnadd_Click1" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style7">
                            <asp:Button ID="btnsave" runat="server" Height="30px" OnClick="txtsave_Click" Text="Save" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style8">
                            <asp:Button ID="btnupdate" runat="server" Height="30px" Text="Update" Width="150px" OnClick="btnupdate_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style9">
                            <asp:Button ID="txtdelete" runat="server" Height="30px" Text="Delete" Width="150px" OnClick="txtdelete_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="txtcancle" runat="server" Height="30px" Text="Cancle" Width="150px" OnClick="txtcancle_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Catid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Catid" HeaderText="Catid" ReadOnly="True" SortExpression="Catid" />
                        <asp:BoundField DataField="Catname" HeaderText="Catname" SortExpression="Catname" />
                        <asp:BoundField DataField="Catimage" HeaderText="Catimage" SortExpression="Catimage" />
                        <asp:BoundField DataField="Catdiscription" HeaderText="Catdiscription" SortExpression="Catdiscription" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


