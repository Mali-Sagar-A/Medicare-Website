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

public partial class Customer_PaymentDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
      (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (!IsPostBack)
        {
            Image1.Visible = false;
           // RadioButton1.Checked = true;


            btnplace.Visible = false;
            btnprint.Visible = false;

            cn.Open();
            cmd.CommandText = "Select Count(Payid) from [Payment]";
            cmd.Connection = cn;
            int x = Convert.ToInt32(cmd.ExecuteScalar());
            if (x == 0)
                lblpayid.Text = "1";
            else
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "select Max(Payid) from [Payment]";
                cmd.Connection = cn;
                int z = Convert.ToInt32(cmd.ExecuteScalar());
                z++;
                lblpayid.Text = z.ToString();
            }
            cn.Close();

            lbloid.Text = Session["id"].ToString();
            lblpaydate.Text = System.DateTime.Now.ToShortDateString();
            lblcname.Text = Session["user"].ToString();
            lbltamount.Text = Session["Total"].ToString();
            double t = Convert.ToDouble(lbltamount.Text);
            double GST = Convert.ToDouble(lblgst.Text);
            double net = t + ((t * GST) / 100);
            double dis = Convert.ToDouble(lbldisc.Text);
            double net1 = net - (net * dis / 100);
            lblnamount.Text = net1.ToString();
        }




    }

    //protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    //{
    //    if(rd1.Checked == true)
    //    {
    //        Image1.Visible = false;
    //        btnplace.Visible = true;
    //    }
    //    else
    //    {

    //        Image1.Visible = true;
    //        btnplace.Visible = true;
    //    }
    //}

    protected void btnplace_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "insert Payment values(" + lblpayid.Text + "," + lbloid.Text + ",'" + lblpaydate.Text + "','" + DropDownList1.Text + "'," + lbldisc.Text + "," + lblgst.Text + "," + lblnamount.Text + "," + lbltamount.Text + ",'" + lblcname.Text + "')";

        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        btnprint.Visible = true;


        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language = 'javascript'>alert('Order Place Successfully')</script>");
    }



    //protected void rd2_CheckedChanged(object sender, EventArgs e)
    //{
    //    if(rd2.Checked == true)
    //    {
    //        Image1.Visible = true;
    //        btnplace.Visible = true;

    //    }
    //    else
    //    {
    //        Image1.Visible = false;
    //        btnplace.Visible = true;
    //    }
    //}


    protected void btnprint_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select distinct * from billView where Oid=" + lbloid.Text + "", cn);
        dal.Fill(ds, "billView");
        dal.Fill(ds);

        crpt.Load(Server.MapPath(@"~/Report/Bill.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;

        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "billView");
        crpt.Refresh();
        cn.Close();
       // Response.Redirect(@"~//Report/Bill.rpt")

    }
   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (DropDownList1.Text == "UPI")
        {
            Image1.Visible = true;
            btnplace.Visible = true;
        }
        else if(DropDownList1.SelectedValue == "2")
        {
            Image1.Visible = false;
            btnplace.Visible = true;
        }
    }

    protected void btncon_Click(object sender, EventArgs e)
    {

        if (DropDownList1.Text == "UPI")
        {
            Image1.Visible = true;
            btnplace.Visible = true;
        }
        else if(DropDownList1.SelectedValue == "2")
        {
            Image1.Visible = false;
            btnplace.Visible = true;
        }
    }
}
