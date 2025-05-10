using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class User_login1 : System.Web.UI.Page
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
        cmd.CommandText = "select * from Customer where Cusername='" + txtname.Text + "' and Cpassword ='" + txtpass.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtname.Text;
        if (dt.Rows.Count > 0)
        {
            Session["user"] = txtname.Text;
            Response.Redirect("~/Customer/ProductDetails.aspx");
            // ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='Javascript'>alert('Login success!!!!')</Script>");
        }
        else
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='Javascript'>alert('Username and Password Incurrect!!!!')</Script>");
    }
}