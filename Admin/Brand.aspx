<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Brand.aspx.cs" Inherits="Admin_Brand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
        width: 20%;
        text-align: center;
    }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: 30px; font-weight: 600; font-family: sans-serif;" class="auto-style10">
        Add Brand Name<br />
    </p>
    <table class="auto-style1">
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Brand ID</td>
            <td>
                <asp:TextBox ID="txtbid" runat="server" Enabled="False" Height="25px" Width="250px"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" />
&nbsp;&nbsp;
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="250px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnuplode" runat="server" Text="Uplode" OnClick="btnuplode_Click" Height="30px" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Brand Name</td>
            <td>
                <asp:TextBox ID="txtbname" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: sans-serif; font-size: 20px; font-weight: 400">Categary Name</td>
            <td>
                <asp:DropDownList ID="drpcatname" runat="server" DataSourceID="SqlDataSource2" DataTextField="Catname" DataValueField="Catname" Height="25px" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
                <table cellpadding="5" class="auto-style1" style="width: 100%; height: 57px">
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="btnadd" runat="server" Height="30px"  Text="Add" Width="150px" OnClick="btnadd_Click1" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="btnsave" runat="server" Height="30px" OnClick="txtsave_Click" Text="Save" Width="150px" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="btnupdate" runat="server" Height="30px" Text="Update" Width="150px" OnClick="btnupdate_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="txtdelete" runat="server" Height="30px" Text="Delete" Width="150px" OnClick="txtdelete_Click" BackColor="#339966" Font-Size="12pt" ForeColor="White" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="btncancle" runat="server" BackColor="#339966" Height="30px" Text="Cancle" Width="150px" OnClick="txtcancle_Click" Font-Size="12pt" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Bid" HeaderText="Bid" ReadOnly="True" SortExpression="Bid" />
                        <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                        <asp:BoundField DataField="Bimage" HeaderText="Bimage" SortExpression="Bimage" />
                        <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            <div style="text-align: center">
    </div>
</asp:Content>

