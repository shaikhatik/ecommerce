using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Checkout : System.Web.UI.Page
{
    bool isTrue = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Home.aspx");
            }

        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        lbl.Text = "";
        cmd.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd = new SqlCommand("OrderMst", con);
            // SqlDataAdapter da = new SqlDataAdapter("select TPrice from OrderMst where Id = '" + Request.QueryString["Id"] + "'", con);
            DataTable dt = (DataTable)Session["buyitems"];
        da.Fill(dt);
        lblpayment.Text = dt.Rows[0]["TPrice"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        if (Session["buyitems"] != null)
        {
            DataTable dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                string Id = Convert.ToString(dt.Rows[i]["Id"]);
                int Qnt = Convert.ToInt32(dt.Rows[i]["Qnt"]);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlCommand cmd = new SqlCommand("ItemMst", con);
                //SqlDataAdapter da = new SqlDataAdapter("select Qnt from ItemMst where Id = '" + Id + "'", con);
                DataTable dtt = new DataTable();
                da.Fill(dtt);
                int quantity = Convert.ToInt32(dtt.Rows[0][0]);
                if (quantity > 0)
                {
                    con.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlCommand cmd = new SqlCommand("OrderMst", con);
                    //SqlCommand cmd = new SqlCommand(" Insert into OrderMst (Id,Uname,IName,Qnt,image,Price,TPrice) values('" + dt.Rows[i]["Id"] + "','" + Session["username"].ToString() + "','" + dt.Rows[i]["IName"]  + "','" + dt.Rows[i]["Qnt"] + "','" + dt.Rows[i]["image"] + "','" + dt.Rows[i]["Price"] + "','" + dt.Rows[i]["TPrice"]  + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Payment(); 
            clearCart();
            Session["buyitems"] = null;
            Response.Redirect("Thanks.aspx");
        }
        else
        {
            Response.Redirect("MyCart.aspx");
        }
    }


    public void Payment()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        if (isTrue == true)
        {
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("PaymentMst", con);
            //SqlCommand cmd = new SqlCommand(" Insert into PaymentMst (Uname,Amount,Type,Bank,Branch,CardNo,CCV,EntryDate) values('" + Session["uname"].ToString() + "','" + Convert.ToDouble(lblpayment.Text) + "','" + DropDownList1.SelectedItem.Text + "','" + drpbankname.SelectedItem.Text + "','" + drpbranch.SelectedItem.Text + "','" + txtcardno.Text + "','" + Convert.ToInt32(txtccv.Text) + "','" + System.DateTime.Now + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    public void clearCart()
    {
        if (Session["username"] != null)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            DataTable dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int Id = Convert.ToInt32(dt.Rows[i]["Id"]);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                SqlCommand cmd = new SqlCommand("Mycart", con);
              //  SqlCommand cmd = new SqlCommand(" Delete from Mycart where Id = '" + Id + "' and Email = '" + Session["username"] + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            lbl.Text = "Select Payment Option";
            btncash.Visible = false;
            Panel1.Visible = false;
        }
        else if (DropDownList1.SelectedIndex == 1 || DropDownList1.SelectedIndex==2)
        {
            btncash.Visible = false;
            Panel1.Visible = true;
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            Panel1.Visible = false;
            btncash.Visible = true;
        }
    }
    protected void btncash_Click(object sender, EventArgs e)
    {

        Response.Redirect("Thanks.aspx");
    
    }

    protected void txtcardno_TextChanged(object sender, EventArgs e)
    {

    }
}