using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        string sql = "SELECT * FROM UserMst where Email = '" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows == true)
        {
            rd.Read();
            con.Close();
            con.Open();
            cmd = new SqlCommand(" Update UserMst set Password = '" + txtcpass.Text + "' where Email = '" + Session["username"] + "'".ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Password changed successfully";
        }
    }
}


       

       