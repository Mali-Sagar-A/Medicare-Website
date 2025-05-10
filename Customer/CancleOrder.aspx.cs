using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Customer_CancleOrder : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from [Order] where Oid=" + lbloid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
       

        cn.Open();
        cmd.CommandText = "delete from Orderdetail where Oid=" + lbloid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        

        cn.Open();
        cmd.CommandText = "delete from Payment where Oid=" + lbloid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Order Cancled!!!!')</Script>");
    }

    protected void clear()
    {
        lbloid.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbloid.Text = GridView1.SelectedRow.Cells[0].Text;
    }
}