using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Customer_Cart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    int p, q, t;
    int st2;
    int st3, id;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblcname.Text = Session["user"].ToString();

        cn.Open();
        cmd.CommandText = "select count(pid) from CartDetail where Uname='" + lblcname.Text + "'";
        cmd.Connection = cn;
        int y = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (y == 0)
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script language = 'javascript'>alert('Your Cart Is Empty')</script>");
        else
        {
            cn.Open();
            cmd.CommandText = "select Count(Oid) from [Order]";
            cmd.Connection = cn;
            int x = Convert.ToInt32(cmd.ExecuteScalar());
            if (x == 0)
                lbloid.Text = "1";
            else
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "select Max(Oid) from [Order]";
                cmd.Connection = cn;
                int z = Convert.ToInt32(cmd.ExecuteScalar());
                z++;
                lbloid.Text = z.ToString();
            }

            cn.Close();
            lblcname.Text = Session["user"].ToString();
            lblodate.Text = System.DateTime.Now.ToShortDateString();
            cn.Open();
            cmd.CommandText = "select sum (Total) from CartDetail where Uname='"+lblcname.Text+"'";
            Double amt = Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection = cn;
            lblamount.Text = amt.ToString();
            lblotime.Text = System.DateTime.Now.ToShortTimeString();
            cn.Close();
        }
        cn.Close();
    }

    protected void btnorder_Click(object sender, EventArgs e)
    {
        for (int i = 0;i < GridView1.Rows.Count;i++)
            {

            int oid = Convert.ToInt32(lbloid.Text);
            id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            string name = Session["user"].ToString();
            string cat = Convert.ToString(GridView1.Rows[i].Cells[1].Text);
            string pname = Convert.ToString(GridView1.Rows[i].Cells[2].Text);
            string uname = Convert.ToString(GridView1.Rows[i].Cells[3].Text);
            p = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
            q = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            t = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);


            cn.Open();
            cmd.CommandText = "insert into Orderdetail values(" + oid + "," + id + ",'" + name + "','" + cat + "','" + pname + "'," + q + "," + p + "," + t + ",'" + txtadd.Text + "','" + txtcity.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }


        String Status = "in Process";
        cn.Open();
        cmd.CommandText = "insert into [Order] values(" + lbloid.Text + ",'" + txtadd.Text + "'," + txtcontact.Text + ",'" + lblodate.Text + "'," + lblamount.Text + ",'" + Status + "','" + lblcname.Text + "','" + txtcity.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language = 'javascript'>alert('Order Comfirmed')</script>");
        Session["id"] = lbloid.Text;
        Session["Total"] = lblamount.Text;

        


        cn.Open();
        cmd.CommandText = "Select Stock from Product where Pid=" + id + " ";
        cmd.Connection = cn;
        st2 = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

        int st3 = st2 - q;
        cn.Open();
        cmd.CommandText = "update [Product] set Stock = " + st3 + " where Pid=" + id + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();


        cn.Open();
        cmd.CommandText = "Delete from CartDetail where Uname='"+ lblcname.Text+ "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("~\\Customer\\PaymentDetails.aspx");
    }

}