using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_vii : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbleror.Text = "";

        if (Page.IsPostBack == false)
        {


            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string id = Request.QueryString["Id"].ToString();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
            //string sql = "SELECT * FROM ItemMst where Id = '" + id + "' ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandText = sql;
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lblname.Text = dt.Rows[0]["iname"].ToString();
            lbldetil.Text = dt.Rows[0]["detail"].ToString();
            lblprice.Text = dt.Rows[0]["price"].ToString();
            lblqnt.Text = dt.Rows[0]["qnt"].ToString();
            Image3.ImageUrl = dt.Rows[0]["image"].ToString();
            lblflav.Text = dt.Rows[0]["flavour"].ToString();
            lblegg.Text = dt.Rows[0]["egg"].ToString();

        }
 
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string id = Request.QueryString["Id"].ToString();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
            // string sql = "SELECT * FROM ItemMst where Id = '" + id + "' ";
            //SqlCommand cmd = new SqlCommand(sql, con);
            //cmd.CommandText = sql;
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Response.Redirect("MyCart.aspx?Id= '" + id + "'");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("User/View.aspx?Id=" + e.CommandArgument.ToString());
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}