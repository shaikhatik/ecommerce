using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
          
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkUser() == true)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Username Already Exists')</script>");
        }
        else
        {

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            //string i = "insert into UserMst(Id,Name,lastname,Address,City,Pincode,Mobile,Email,Password) values(@id,@Name,@lastname,@Address,@City,@Pincode,@Mobile,@Email,@Password)";
            //SqlCommand cmd = new SqlCommand(i, con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("UserMst", con);
            cmd.Parameters.AddWithValue("@id",1);
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@lastname", txtsname.Text);
            cmd.Parameters.AddWithValue("@Address", txtadd.Text);
            cmd.Parameters.AddWithValue("@City", txtcity.Text);
            cmd.Parameters.AddWithValue("@Pincode", txtppin.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtmo.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpass.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con.Close();
        }
    }
    private bool checkUser()
    {
        bool useravailable = false;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        // String myquery = "Select * from UserMst where Email ='" + txtemail.Text + "'";
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("UserMst", con);
       // SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            useravailable = true;
        }
        con.Close();
        return useravailable;
    }

    protected void txtcpass_TextChanged(object sender, EventArgs e)
    {

    }
}
