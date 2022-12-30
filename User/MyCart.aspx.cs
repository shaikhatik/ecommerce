using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Id");
            dt.Columns.Add("Image");
            dt.Columns.Add("IName");
            dt.Columns.Add("Price");
            dt.Columns.Add("Qnt");
            dt.Columns.Add("TPrice");


            if (Request.QueryString["Id"] != null)
            {
                if (Session["buyitems"] == null)
                {

                    dr = dt.NewRow();
                    string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                    SqlConnection con = new SqlConnection(connStr);
                    SqlDataAdapter da = new SqlDataAdapter("select * from ItemMst where Id=" + Request.QueryString["Id"], con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["IName"] = ds.Tables[0].Rows[0]["IName"].ToString();
                    dr["Qnt"] = ds.Tables[0].Rows[0]["Qnt"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    int Totalprice = Price;
                    dr["TPrice"] = Totalprice;
                    dt.Rows.Add(dr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Mycart(Id,Image,IName,Qnt,Price,Email) values('" + dr["Id"] + "','" + dr["Image"] + "','" + dr["IName"] + "','" + dr["Qnt"] + "','" + dr["Price"] + "','" + Session["username"] + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    Response.Redirect("Home.aspx");

                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    dr = dt.NewRow();
                    string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                    SqlConnection con = new SqlConnection(connStr);
                    SqlDataAdapter da = new SqlDataAdapter("select * from ItemMst where Id=" + Request.QueryString["Id"], con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["IName"] = ds.Tables[0].Rows[0]["IName"].ToString();
                    dr["Qnt"] = Request.QueryString["Qnt"];
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    Int64 Price = Convert.ToInt64(ds.Tables[0].Rows[0]["Price"].ToString());
                    Int64 Totalprice = Price ;
                    dr["TPrice"] = Totalprice;
                    dt.Rows.Add(dr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Mycart(Id,Image,IName,Qnt,Price,Email) values('" + dr["Id"] + "','" + dr["Image"] + "','" + dr["IName"] + "','" + dr["Qnt"] + "','" + dr["Price"] + "','" + Session["username"] + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";


                }

            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                }
            }
        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int TPrice = 0;
        while (i < nrow)
        {
            TPrice = TPrice + Convert.ToInt32(dt.Rows[i]["TPrice"].ToString());
            i += 1;

        }
        return TPrice;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from OrderMst where Id=@Id", con);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        bool isTrue = false;
        DataTable dt = (DataTable)Session["buyitems"];
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int Id = Convert.ToInt16(dt.Rows[i]["Id"]);
            int Qnt = Convert.ToInt32(dt.Rows[i]["Qnt"]);
            SqlDataAdapter da = new SqlDataAdapter("select Qnt, Id from ItemMst where Id = '" + Id + "'", con);
            DataTable dtt = new DataTable();
            da.Fill(dtt);
            int quantity = Convert.ToInt32(dtt.Rows[0][0]);
           
        }
        // check is cart contains any product or not
        if (GridView1.Rows.Count.ToString() == "0")
        {
            Response.Write("<script>alert(' Your Cart is Empty. You cannot checkout');</script>");
        }
        else
        {
            if (isTrue == true)
            {
                Response.Redirect("Checkout.aspx");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}