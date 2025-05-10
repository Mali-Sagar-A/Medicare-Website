using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["cat"] = btn.CommandArgument;

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["pid"] = btn.CommandArgument;
        Response.Redirect("~/User/ProductDetails.aspx");
    }
}