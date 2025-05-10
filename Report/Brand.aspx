<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master"  AutoEventWireup="true" CodeFile="Brand.aspx.cs" Inherits="Report_Brand" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style2">
            <tr>
                <td>
    
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" OnInit="CrystalReportViewer1_Init" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
                </td>
            </tr>
        </table>
    
                </td>
            </tr>
        </table>
    
    </div>
    
    </form>
</body>
</html>
</asp:Content>