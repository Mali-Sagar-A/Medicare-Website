using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class User_Enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
        (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Enquiry values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcont.Text + ",'"+txtdate.Text+"','"+txtsub.Text+"','"+txtmsg.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Submitted!!!!')</Script>");
    }
    protected void clear()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtcont.Text = "";
        txtsub.Text = "";
        txtmsg.Text = "";

    }
}