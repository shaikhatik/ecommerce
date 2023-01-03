using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            // SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

    }

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?id=" + e.CommandArgument.ToString());

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("ItemMst", con);
        // SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst where (IName like '%" + TextBox1.Text + "%') or (CName like '%" + TextBox1.Text + "%')", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsearc_Click(object sender, EventArgs e)
    {
        //Session["name"] = txtsearch.Text;
        Response.Redirect("Search.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(1, 5);
        Image1.ImageUrl = "~/Photo/" + i.ToString() + ".png";
    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
