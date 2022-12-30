using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            
            if (Session["name"]!=null)
            {
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);

                string cname = Session["name"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst "+ cname +  "%", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();

                lblsearch.Text = "(" + DataList1.Items.Count.ToString() + ")";
                Session["name"] = null;
            }
            else  if (Request.QueryString["id"].ToString() !="")
            {
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);

                string cname = Request.QueryString["id"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst " + cname, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();

                lblsearch.Text = "(" + DataList1.Items.Count.ToString() + ")";
            }
            
            else
            {
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst where", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();
                lblsearch.Text = "(" + DataList1.Items.Count.ToString() + ")";
            }
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
}