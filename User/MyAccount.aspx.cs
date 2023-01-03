using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            //string sql = "SELECT * FROM UserMst where Email = '" + Session["username"] + "'";
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("UserMst", con);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandText = sql;
            cmd.Connection = con;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {

                DataTable dt = new DataTable();
                sda.Fill(dt);
               
                lblname.Text = dt.Rows[0]["name"].ToString();
                lbllastname.Text = dt.Rows[0]["lastname"].ToString();
                lbladdrss.Text = dt.Rows[0]["address"].ToString();
                lblcity.Text = dt.Rows[0]["city"].ToString();
                lblpin.Text = dt.Rows[0]["pincode"].ToString();
                lblcont.Text = dt.Rows[0]["mobile"].ToString();

            }
        }
        lblmsg.Text = "";
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("UserMst", con);
      //  string i = "update UserMst Set Name = @name, lastname = @lastname, Address=@address, City = @city, Pincode = @pincode, Mobile=@mobile where Name = @name";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
        cmd.Parameters.AddWithValue("@address", txtaddd.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);

        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Added Successfully')</script>");
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("UserMst", con);
       // string sql = "SELECT * FROM UserMst where Email = '" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(sql, con);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
          
            txtname.Text = dt.Rows[0]["name"].ToString();
            txtlastname.Text = dt.Rows[0]["lastname"].ToString();
            txtaddd.Text = dt.Rows[0]["address"].ToString();
            txtcity.Text = dt.Rows[0]["city"].ToString();
            txtpincode.Text = dt.Rows[0]["pincode"].ToString();
            txtmobile.Text = dt.Rows[0]["mobile"].ToString();
            lblmsg.Text = "Details updated successfully";
        }
        con.Close();
        MultiView1.ActiveViewIndex = -1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("UserMst", con);
       // string sql = "SELECT * FROM UserMst where  Email = '" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandText = sql;
        con.Open();
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);

            lblname.Text = dt.Rows[0]["name"].ToString();
            lbllastname.Text = dt.Rows[0]["lastname"].ToString();
            lbladdrss.Text = dt.Rows[0]["address"].ToString();
            lblcity.Text = dt.Rows[0]["city"].ToString();
            lblpin.Text = dt.Rows[0]["pincode"].ToString();
            lblcont.Text = dt.Rows[0]["mobile"].ToString();
        }
            con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("UserMst", con);
       // string sql = "SELECT * FROM UserMst where Email = '" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandText = sql;
        con.Open();
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
           
            txtname.Text = dt.Rows[0]["name"].ToString();
            txtlastname.Text = dt.Rows[0]["lastname"].ToString();
            txtaddd.Text = dt.Rows[0]["address"].ToString();
            txtcity.Text = dt.Rows[0]["city"].ToString();
            txtpincode.Text = dt.Rows[0]["pincode"].ToString();
            txtmobile.Text = dt.Rows[0]["mobile"].ToString();
            lblmsg.Text = "Details updated successfully";
        }
        con.Close();
    }
}