using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open()
              cmd.CommandType = CommandType.StoredProcedure;
              SqlCommand cmd = new SqlCommand("Feedbackmst", con);
        // SqlCommand cmd = new SqlCommand("insert into Feedbackmstr(UNAME, MESSAGE) values('" + txtname.Text.ToString() + "', '" + txtfeedback.Text + "') ", con);

        cmd.Parameters.AddWithValue("@UNAME", txtname.Text);
        cmd.Parameters.AddWithValue("@MESSAGE", txtfeedback.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Added Successfully')</script>");
            txtname.Text = "";
            txtfeedback.Text = "";

            lblmsg.Text = "Feedback Sent Successfully";

        }
    }