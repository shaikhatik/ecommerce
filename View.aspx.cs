using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {


            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string id = Request.QueryString["Id"].ToString();
            //string sql = "SELECT * FROM ItemMst where id = '" + id + "' ";
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
           // SqlCommand cmd = new SqlCommand(sql, con);
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
            lblflavour.Text = dt.Rows[0]["Flavour"].ToString();
            lblegg.Text = dt.Rows[0]["Egg"].ToString();
            

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string id = Request.QueryString["Id"].ToString();
            //string sql = "SELECT * FROM ItemMst where Id = '" + id + "' ";
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
            //SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandText = sql;
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Response.Redirect("Login.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?Id=" + e.CommandArgument.ToString());
    }
}