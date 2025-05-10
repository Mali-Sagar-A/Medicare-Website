using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["user"].ToString();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["search"] = TextBox1.Text;
        Response.Redirect("~/Customer/Search.aspx");
    }
}
