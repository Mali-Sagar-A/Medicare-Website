using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
        (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Category values(" + txtid.Text + ",'" + txtname.Text + "','" + txtdisc.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Saved!!!!')</Script>");

    }

    protected void txtsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Category values(" + txtid.Text + ",'" + txtname.Text + "','"+txtimg.ImageUrl+"','" + txtdisc.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Saved!!!!')</Script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Catid) from Category";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            txtid.Text = "1";
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select MAX(Catid) from Category";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
                txtid.Text = y.ToString();
        }
        cn.Close();

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Category set Catname='" + txtname.Text + "',Catimage='" + txtimg.ImageUrl + "',Catdiscription='" + txtdisc.Text + "' where Catid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Updated!!!!')</Script>");


    }
    protected void clear()
    {
        txtid.Text = "";
        txtname.Text = "";
        txtimg.ImageUrl = "";
        txtdisc.Text = "";
    }

    protected void txtdelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Category where Catid=" + txtid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Deleted!!!!')</Script>");

    }

    protected void txtcancle_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtimg.ImageUrl = "";
        txtdisc.Text = "";
    }

    protected void btnuplode_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            txtimg.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtimg.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
        txtdisc.Text = GridView1.SelectedRow.Cells[4].Text;

    }
}