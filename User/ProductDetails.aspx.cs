using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ProductDetails : System.Web.UI.Page
{
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

            if(st > q)
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
        for (int i = 0; i < count; i++)
        {
            Label stock = DataList1.Items[i].FindControl("lblstock") as Label;
            int st = Convert.ToInt32(stock.Text);
           
            if (st >= 1)
            {
                Response.Redirect("~/User/login1.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='Javascript'>alert('Out of Stock!!!!')</Script>");
            }
        }
       
    }
}