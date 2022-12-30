using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddminItem : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            //if (Session["admin"] == null)
           // {
                //Response.Redirect("login.aspx");
            //}
            ShowGrid();
            Drp_cat();
        }
    }

    private void Drp_cat()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CateMas", con);
        product_cat.DataSource = cmd.ExecuteReader();
        product_cat.DataTextField = "CName";
        product_cat.DataValueField = "Id";
        product_cat.DataBind();
        product_cat.Items.Insert(0, "Product Category");
        con.Close();
    }

    private void ShowGrid()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string sql = "SELECT * FROM ItemMst";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandText = sql;
        cmd.Connection = con;
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);

        string Product_path = Server.MapPath("~/Product/");
        string productimg_path = Server.MapPath("~/Product_Img/");

        FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);


        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into ItemMst (Id,IName,Detail,Price,Image,Qnt,CName,Egg,Flavour)values('" + TextBox3.Text + "','" + txtiname.Text + "','" + txtdescrip.Text + "','" + Convert.ToDouble(txtprice.Text) + "','" + "~/images/" + FileUpload1.FileName + "','" + txtquan.Text + "', '" + product_cat.SelectedItem.Text + "','" + txtegg.Text + "','" + drpflav.SelectedItem.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ShowGrid();
        TextBox3.Text = "";
        txtdescrip.Text = "";
        txtiname.Text = "";
        txtprice.Text = "";
        txtegg.Text = "";
        drpflav.SelectedIndex = 0;
        txtquan.Text = "";
        product_cat.SelectedIndex = 0;
        lblmsg.Text = "Item Added Successfully";

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from ItemMst where Id=@1", con);
        cmd.Parameters.AddWithValue("@1", Id);
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Deleted Successfully')</script>");
        con.Close();
        ShowGrid();
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        ShowGrid();

    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        GridViewRow row = GridView1.Rows[e.RowIndex];
        TextBox IName = (TextBox)row.FindControl("TextBox1");
        TextBox Price = (TextBox)row.FindControl("TextBox2");

        SqlConnection con2 = new SqlConnection(connStr);
        con2.Open();
        SqlCommand cmd = new SqlCommand("Update ItemMst set IName = @1, Price=@2 where Id = @3", con2);
        cmd.Parameters.AddWithValue("@1", txtiname);
        cmd.Parameters.AddWithValue("@2", txtprice);
        cmd.Parameters.AddWithValue("@3", Id);
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Updated Successfully')</script>");
        con2.Close();
        GridView1.EditIndex = -1;
        ShowGrid();
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtdescrip_TextChanged(object sender, EventArgs e)
    {

    }

    protected void drpmemory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtquan_TextChanged(object sender, EventArgs e)
    {

    }
}