using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Brand : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection
       (ConfigurationManager.ConnectionStrings["medicare"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(bid) from Brand";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            txtbid.Text = "1";
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select MAX(Bid) from Brand";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtbid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void txtsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Brand values(" + txtbid.Text + ",'" + txtbname.Text + "','" + Image1.ImageUrl + "','"+drpcatname.Text +"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Saved!!!!')</Script>");
    }
    protected void clear()
    {
        txtbid.Text = "";
        txtbname.Text = "";
        Image1.ImageUrl = "";
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Brand set Bname='" + txtbname.Text + "',Bimage='" + Image1.ImageUrl + "',Catname='"+drpcatname.Text+"' where Catid=" + txtbid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Updated!!!!')</Script>");
    }

    protected void txtdelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Brand where bid=" + txtbid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='Javascript'>alert('Deleted!!!!')</Script>");
    }

    protected void btnuplode_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtbid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtbname.Text = GridView1.SelectedRow.Cells[2].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
        drpcatname.Text = GridView1.SelectedRow.Cells[4].Text;
    }

    protected void txtcancle_Click(object sender, EventArgs e)
    {
        txtbid.Text = "";
        txtbname.Text = "";
        Image1.ImageUrl = "";
    }
}