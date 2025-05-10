using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
        (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataTable dt = new DataTable();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Product values(" + pid.Text + ",'" + pname.Text + "','" + DropDownList1.Text + "','"+ DropDownList2.Text+"'," + pprice.Text + ", '" +pimg.ImageUrl + "','"+pspe.Text+"','"+puses.Text+"','"+ DropDownList3.Text+"','"+ drpsell.Text+"',"+pstock.Text+",'"+txtdate.Text+"','"+txtdate1.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Saved!!!!')</Script>");
    }
    protected void clear()
    {
        pid.Text = "";
        pname.Text = "";
       
      
        pprice.Text = "";
        pimg.ImageUrl = "";
        pspe.Text = "";
        puses.Text = "";
       
        
        pstock.Text = "";
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Pid) from Product";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            pid.Text = "1";
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select MAX(Pid) from Product";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            pid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Product set Pname='" + pname.Text + "',Catname='" + DropDownList1.Text + "',Bname = '"+ DropDownList2.Text+"',Pprice=" + pprice.Text + ", Pimage ='"+pimg.ImageUrl+"',Pspecification ='"+pspe.Text+"', Puses ='"+puses.Text+"',Packing ='"+ DropDownList3.Text+"',Sellingunit ='"+drpsell.Text+"', Stock ="+pstock.Text+", Mdate ='"+txtdate.Text+"', Edate ='"+txtdate1.Text+"' where Pid=" + pid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Updated!!!!')</Script>");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Product where Pid=" + pid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Deleted!!!!')</Script>");
    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        pid.Text = "";
        pname.Text = "";
       
      
        pprice.Text = "";
        pimg.ImageUrl = "";
        pspe.Text = "";
        puses.Text = "";
       
        
        pstock.Text = "";



    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Images\\" + FileUpload2.FileName));
            pimg.ImageUrl = "~\\Images\\" + FileUpload2.FileName;

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        pid.Text = GridView1.SelectedRow.Cells[1].Text;
        pname.Text = GridView1.SelectedRow.Cells[2].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[3].Text;
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[3].Text;


        DropDownList3.Text = GridView1.SelectedRow.Cells[9].Text;

        drpsell.Items.Clear();
        if (DropDownList3.Text == "Tablets")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("10 Strips");
            drpsell.Items.Add("15 Strips");
            drpsell.Items.Add("30 Strips");
            drpsell.Items.Add("60 Strips");

            drpsell.Text = GridView1.SelectedRow.Cells[10].Text;
        }

        if (DropDownList3.Text == "Syrups")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30ml");
            drpsell.Items.Add("100ml");
            drpsell.Items.Add("150ml");
            drpsell.Items.Add("250ml");

            drpsell.Text = GridView1.SelectedRow.Cells[10].Text;
        }
        if (DropDownList3.Text == "Powder")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");

            drpsell.Text = GridView1.SelectedRow.Cells[10].Text;
        }
        if (DropDownList3.Text == "Devices")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("1");
        }
        if (DropDownList3.Text == "Spray")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");
        }
        if (DropDownList3.Text == "Gel")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");
        }
        if (DropDownList3.Text == "Box")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("1");

        }

        Session["Category"] = DropDownList1.Text;
        pprice.Text = GridView1.SelectedRow.Cells[5].Text;
        pimg.ImageUrl = GridView1.SelectedRow.Cells[6].Text;
        pspe.Text = GridView1.SelectedRow.Cells[7].Text;
        puses.Text = GridView1.SelectedRow.Cells[8].Text;
       
       
        pstock.Text = GridView1.SelectedRow.Cells[11].Text;
        txtdate.Text = Convert.ToDateTime(GridView1.SelectedRow.Cells[12].Text).ToShortDateString();
        txtdate1.Text = Convert.ToDateTime(GridView1.SelectedRow.Cells[13].Text).ToShortDateString();

        DropDownList2.Text = GridView1.SelectedRow.Cells[4].Text;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //List<string> tab = new List<string>();
        //tab.Add("10");
        //tab.Add("15");

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        Session["Category"] = DropDownList1.Text;

        //cn.Close();
        //cn.Open();
        //dt.Clear();
        //cmd.CommandText = "select * from Brand Where catname='"+DropDownList1.Text+"'";
        //cmd.Connection = cn;
        //dt.Load(cmd.ExecuteReader());
        //DropDownList2.DataSource = dt;
        //DropDownList2.Text = "Bname";
        //DropDownList2.SelectedValue = "Bname";
        //cn.Close();
    }

    protected void DropDownList3_TextChanged(object sender, EventArgs e)
    {

        if (DropDownList3.Text == "Tablets")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("10 Strips");
            drpsell.Items.Add("15 Strips");
            drpsell.Items.Add("30 Strips");
            drpsell.Items.Add("60 Strips");
        }

        if (DropDownList3.Text == "Syrups")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30ml");
            drpsell.Items.Add("100ml");
            drpsell.Items.Add("150ml");
            drpsell.Items.Add("250ml");
        }
        if (DropDownList3.Text == "Powder")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");
        }
        if (DropDownList3.Text == "Devices")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("1");
        }
        if (DropDownList3.Text == "Spray")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");
        }
        if (DropDownList3.Text == "Gel")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("30gm");
            drpsell.Items.Add("60gm");
            drpsell.Items.Add("100gm");
        }
        if (DropDownList3.Text == "Box")
        {
            drpsell.Items.Clear();
            drpsell.Items.Add("1");

        }
    }
}