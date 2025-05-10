using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Customer_ProductDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label stock = DataList1.Items[i].FindControl("lblstock") as Label;
            int st = Convert.ToInt32(stock.Text);

            Label lblprise = DataList1.Items[i].FindControl("lblprise") as Label;
            int p = Convert.ToInt32(lblprise.Text);
            DropDownList d = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
            int q = Convert.ToInt32(d.Text);

            if (st > q)
            {
                int t = (p * q);
                Label lbltot = DataList1.Items[i].FindControl("lbltotal") as Label;
                lbltot.Text = t.ToString();
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Current qty not available!!!!')</Script>");
            }
        }
    }

    protected void btncart_Click(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i=0; i < count; i ++)
        {
            Label stock = DataList1.Items[i].FindControl("lblstock") as Label;
            int st = Convert.ToInt32(stock.Text);

            if (st >= 1)
            {
                Label lblpid = DataList1.Items[i].FindControl("lblpid") as Label;
                int pid = Convert.ToInt32(lblpid.Text);

                Label lblcat = DataList1.Items[i].FindControl("lblcat") as Label;
                string cat = (lblcat.Text);

                Label lblpname = DataList1.Items[i].FindControl("lblpname") as Label;
                string pname = (lblpname.Text);

                Label lblprise = DataList1.Items[i].FindControl("lblprise") as Label;
                int p = Convert.ToInt32(lblprise.Text);


                DropDownList d = DataList1.Items[i].FindControl("DropDownList1") as DropDownList;
                int q = Convert.ToInt32(d.Text);
                int t = (p * q);

                Label lbltot = DataList1.Items[i].FindControl("lbltotal") as Label;
                int tot = Convert.ToInt32(lbltot.Text);


                string l = Session["user"].ToString();
                cn.Open();
                cmd.CommandText = "insert into CartDetail values(" + pid + ",'" + cat + "','" + pname + "','" + l + "'," + p + "," + q + "," + tot + ")";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                cn.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Added to Cart Succesfully!!!!')</Script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Out of Stock!!!!')</Script>");
            }
            

        }
    }
}