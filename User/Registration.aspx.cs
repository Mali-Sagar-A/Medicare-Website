using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
        (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Cid) from Customer";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            txtcid.Text = "1";
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select MAX(Cid) from Customer";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtcid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {   
        if(!rd1.Checked && !rd2.Checked)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Select Gender First!!!!')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Customer values(" + txtcid.Text + ",'" + txtname.Text + "','" + txtemail.Text + "'," + txtcontact.Text + ",'" + txtaddd.Text + "',@p1," + txtage.Text + ",'" + txtuname.Text + "','" + txtpass.Text + "')";
            if (rd1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rd1.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rd2.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            //clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Registration Submitted!!!!')</Script>");
        }
        

    }
    protected void clear()
    {
        txtcid.Text = "";
        txtname.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtaddd.Text = "";
        rd1.Checked = false;
        rd2.Checked = false;
        txtage.Text = "";
        txtuname.Text = "";
        txtpass.Text = "";

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtcid.Text = "";
        txtname.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtaddd.Text = "";
        rd1.Checked = false;
        rd2.Checked = false;
        txtage.Text = "";
        txtuname.Text = "";
        txtpass.Text = "";
    }
}