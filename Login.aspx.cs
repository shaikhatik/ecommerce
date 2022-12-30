using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string i = "select * from UserMst where Email = @Email and Password=@Password";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@Email", txtuname.Text);
        cmd.Parameters.AddWithValue("@Password", txtpass.Text);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        con.Open();
        sda.Fill(dt);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["username"] = rd["Email"].ToString();
            Session["Name"] = rd["Name"].ToString();
            Session["lastname"] = dt.Rows[0]["lastname"].ToString();
            Session["buyitems"] = null;
            Response.Redirect("User/Home.aspx");
            
        }

        else if (txtuname.Text == "Admin" & txtpass.Text == "Admin123")
        {
            Session["admin"] = txtuname.Text;
            Response.Redirect("admin/Addcategory.aspx");
        }
        else
        {
            lblerror.Text = "Wrong Email/Password";
        }
        }


    }