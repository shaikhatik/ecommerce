using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PRODUCT : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            //SqlDataAdapter sda = new SqlDataAdapter("Select * from ItemMst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("ItemMst", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
           Response.Redirect("View.aspx?id=" + e.CommandArgument.ToString());
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}