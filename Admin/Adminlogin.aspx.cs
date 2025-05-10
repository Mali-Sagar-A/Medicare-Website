using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Adminlogi : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * from Admin where Username='" + txtname.Text + "' and Password ='" + txtpass.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtname.Text;
        if (dt.Rows.Count > 0)
        {
            Session["Admin"] = txtname.Text;

            Response.Redirect("~/Admin/Home.aspx");
            // ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='Javascript'>alert('Login success!!!!')</Script>");
        }
        else
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='Javascript'>alert('Username and Password Incurrect!!!!')</Script>");

    
}

    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}