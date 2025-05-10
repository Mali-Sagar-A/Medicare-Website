using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Configuration;

public partial class Report_Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
  (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select distinct * from Payment ", cn);
        dal.Fill(ds, "Payment");
        dal.Fill(ds);

        crpt.Load(Server.MapPath(@"~/Report/Payment.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;

        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Payment");
        crpt.Refresh();
        cn.Close();
    }

    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}