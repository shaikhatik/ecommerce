using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {

        }
        

    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //UDT = UAdapter.Seleect_FOR_LOGIN(txtuname.Text, txtupass.Text);
        //if (UDT.Rows.Count > 0)
        //{
        //    Session["uname"] = txtuname.Text;
        //    Session["fname"] = UDT.Rows[0]["name"].ToString();
        //    Session["lname"] = UDT.Rows[0]["surname"].ToString();
        //    Response.Redirect("User/Default.aspx");

        //}
        //else
        //{

        //  //  lblerror.Text = "Error !!!";
        //}
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        //UDT = UAdapter.Seleect_FOR_LOGIN(txtuname.Text, txtupass.Text);
        //if (UDT.Rows.Count > 0)
        //{
        //    Session["uname"] = txtuname.Text;
        //    Session["fname"] = UDT.Rows[0]["name"].ToString();
        //    Session["lname"] = UDT.Rows[0]["surname"].ToString();
        //    Response.Redirect("User/Default.aspx");

        //}
        //else
        //{

        //    lbll.Text = "Error !!!";
        //}
    }
    protected void btnsearc_Click(object sender, EventArgs e)
    {
        Session["name"] = "search";
        //Response.Redirect("Search.aspx?name=" + txtsearch.Text);
    }


    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {

    }
}