using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Manageadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Admin values('" + txtuname.Text + "','" + txtnpass.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language='Javascript'>alert('Saved!!!!')</Script>");
    }
    protected void clear()
    {
        txtuname.Text = "";
        txtopass.Text = "";
        txtnpass.Text = "";
        txtcpass.Text = "";
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set Password ='" + txtnpass.Text + "' where Username='" + txtuname.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='Javascript'>alert('Updated!!!!')</Script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Admin where Username='" + txtuname.Text + "' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Deleted!!!!')</Script>");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtuname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtopass.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}