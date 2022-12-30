using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            ShowGrid();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con1 = new SqlConnection(connStr);
        SqlDataAdapter sda = new SqlDataAdapter("select * from CateMas where CName = '" + txtname.Text.ToString() + "' ", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Category Already Exists')</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CateMas(Id,CName) values(@Id,@CName)", con);
            cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@CName", txtname.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Added Successfully')</script>");
            txtname.Text = "";
            ShowGrid();
        }


    }
    public void ShowGrid()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string sql = "SELECT * FROM CateMas";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandText = sql;
        cmd.Connection = con;
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from CateMas where Id=@1", con);
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
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[100]);     
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from CateMas where Id= @1", con);
        cmd.Parameters.AddWithValue("@1", Id);
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Deleted Successfully')</script>");
        con.Close();
        ShowGrid();

    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string CName = (row.FindControl("TextBox1") as TextBox).Text;
        SqlConnection con2 = new SqlConnection(connStr);
        con2.Open();
        SqlCommand cmd = new SqlCommand("Update CateMas set  CName=@1 where Id=@2", con2);
        cmd.Parameters.AddWithValue("@1",CName);
        cmd.Parameters.AddWithValue("@2", Id);
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Update Successfully')</script>");
        con2.Close();
        GridView1.EditIndex = -1;

    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
