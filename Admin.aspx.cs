using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;

public partial class Myfoodwarehouse_Admin : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    public static class Utility
    {
        public static string EscapeApostrophes(string input)
        {
            return input.Replace("'", "''");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
       // Session["username"] = TextBox1.Text;

        selectSQL = "select * from Users WHERE username ='" + TextBox1.Text + "' and password ='" + Utility.EscapeApostrophes(TextBox2.Text) + "'";
        dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["username"] = dr["username"].ToString();
                Response.Redirect("H.aspx");
            }
            else
            {
                Label18.Text = "Invalid Username or Password  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label18.Text = "Error  Logging in  ";
            Label18.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
    }
}
