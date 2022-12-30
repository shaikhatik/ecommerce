using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            lblname.Text = "Welcome " + Session["Name"].ToString() + " " + Session["lastname"].ToString();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["s"] = TextBox1.Text + "%";
        Response.Redirect("Search.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Home.aspx");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("MyAccount.aspx?id=" + e.CommandArgument.ToString());

    }
}
