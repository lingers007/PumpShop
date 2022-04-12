using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.IO;

public partial class Added : System.Web.UI.Page
{
    string selectSQL;

    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlConnection dbConn3 = new SqlConnection();
    SqlConnection dbConn4 = new SqlConnection();
    SqlDataReader dr;
    public string dbstring = "Data Source=EMMA\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
    public SqlConnection MyConnection, MyConnection1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username"].ToString() == "")
            {
            }
            else
            {


            }
        }

        catch
        {
            Response.Redirect("Admin.aspx");
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        selectSQL = "  SELECT * from FlowRite  where  id='3'  ";
        //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";

        dbConn3.ConnectionString = "Data Source=EMMA\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
        //dbConn1.ConnectionString = "Data Source=NEW-VITAL\\SCHOOLSERVER; Initial Catalog=emma;Integrated Security=True;";

        cmd1.Connection = dbConn3;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;






        dbConn3.Open();
        dr = cmd1.ExecuteReader();


        if (dr.Read())
        {

        string path = Server.MapPath("Product//" + dr["Product_Code"].ToString() + ".jpg");
        FileInfo file = new FileInfo(path);
        if (file.Exists)//check file exsit or not
        {
            file.Delete();
            Label1.Text =  " file deleted successfully";
            Label1.ForeColor = Color.Green;
        }
        else
        {
            Label1.Text = " This file does not exists ";
            Label1.ForeColor = Color.Red;
        }

       
           

        }
        else
        {






        }
    }
}
