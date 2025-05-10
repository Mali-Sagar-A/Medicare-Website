using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_ManageOrderaspx : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbloid.Text = GridView1.SelectedRow.Cells[1].Text;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "in Process")
        {
            cn.Open();
            cmd.CommandText = "update [Order]  set Status='" + DropDownList1.Text + "' where Oid=" + lbloid.Text + "  ";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();


        }
        else if (DropDownList1.Text == "Delivered")
        {
            cn.Open();
            cmd.CommandText = "update [Order]  set Status='" + DropDownList1.Text + "' where Oid=" + lbloid.Text + "  ";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<Script language='Javascript'>alert('Select Status!!!!')</Script>");
        }
      //  GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "", "<Script language='Javascript'>alert('Status Updated!!!!')</Script>");
    }
}