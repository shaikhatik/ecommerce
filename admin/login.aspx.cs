using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{

      protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string user = txtuname.Text.Trim();
        // string i = "select * from AdminMst where Username =@Username and Password=@Password";
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("Usermst", con);
       // SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@Username", txtuname.Text);
        cmd.Parameters.AddWithValue("@Password", txtpass.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["Username"] = rd["Username"].ToString();
            Response.Redirect("addcategory.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
            "<script language='javascript'>alert('Invalid Username and Password')</script>");
            con.Close();

        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}