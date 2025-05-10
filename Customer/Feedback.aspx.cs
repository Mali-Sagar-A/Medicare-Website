using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Customer_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
        (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (!rd1.Checked && !rd2.Checked && !rd3.Checked && !rd4.Checked && !rd5.Checked && !rd6.Checked && !rd7.Checked && !rd8.Checked && !rd9.Checked && !rd10.Checked && !rd11.Checked && !rd12.Checked && !rd13.Checked && !rd14.Checked && !rd15.Checked)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Give Feed Back First!!!!')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Feedback  values('" + txtname.Text + "','" + txtemail.Text + "'," + txtmoblie.Text + ",'" + txtdate.Text + "',@p1,@p2,@p3,@p4,'" + txtsug.Text + "')";
            if (rd1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", "Bad");
            else if (rd2.Checked == true)
                cmd.Parameters.AddWithValue("@p1", "Good");
            else if (rd3.Checked == true)
                cmd.Parameters.AddWithValue("@p1", "Better");
            else
                cmd.Parameters.AddWithValue("@p1", "Excellent");

            if (rd5.Checked == true)
                cmd.Parameters.AddWithValue("@p2", "Bad");
            else if (rd6.Checked == true)
                cmd.Parameters.AddWithValue("@p2", "Good");
            else if (rd7.Checked == true)
                cmd.Parameters.AddWithValue("@p2", "Better");
            else
                cmd.Parameters.AddWithValue("@p2", "Excellent");

            if (rd9.Checked == true)
                cmd.Parameters.AddWithValue("@p3", "Bad");
            else if (rd10.Checked == true)
                cmd.Parameters.AddWithValue("@p3", "Good");
            else if (rd11.Checked == true)
                cmd.Parameters.AddWithValue("@p3", "Better");
            else
                cmd.Parameters.AddWithValue("@p3", "Excellent");

            if (rd13.Checked == true)
                cmd.Parameters.AddWithValue("@p4", "Bad");
            else if (rd14.Checked == true)
                cmd.Parameters.AddWithValue("@p4", "Good");
            else if (rd15.Checked == true)
                cmd.Parameters.AddWithValue("@p4", "Better");
            else
                cmd.Parameters.AddWithValue("@p4", "Excellent");

            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Submitted!!!!')</Script>");
        }
    }
    protected void clear()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtmoblie.Text = "";
        txtdate.Text = "";
        rd1.Checked = false;
        rd2.Checked = false;
        rd3.Checked = false;
        rd4.Checked = false;
        rd5.Checked = false;
        rd6.Checked = false;
        rd7.Checked = false;
        rd8.Checked = false;
        rd9.Checked = false;
        rd10.Checked = false;
        rd11.Checked = false;
        rd12.Checked = false;
        rd13.Checked = false;
        rd14.Checked = false;
        rd15.Checked = false;
        rd16.Checked = false;
        txtsug.Text = "";


    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtmoblie.Text = "";
        txtdate.Text = "";
        rd1.Checked = false;
        rd2.Checked = false;
        rd3.Checked = false;
        rd4.Checked = false;
        rd5.Checked = false;
        rd6.Checked = false;
        rd7.Checked = false;
        rd8.Checked = false;
        rd9.Checked = false;
        rd10.Checked = false;
        rd11.Checked = false;
        rd12.Checked = false;
        rd13.Checked = false;
        rd14.Checked = false;
        rd15.Checked = false;
        rd16.Checked = false;
        txtsug.Text = "";
    }
}