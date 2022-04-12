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

public partial class Acc : System.Web.UI.Page
{
    string selectSQL;
    string selectSQL4;
    string selectSQL1;
    string updateSQL;


    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    public SqlConnection dbConn = new SqlConnection();
    public SqlConnection dbConn1 = new SqlConnection();
    public SqlConnection dbConn2 = new SqlConnection();
    public SqlConnection dbConn3 = new SqlConnection();
    public SqlConnection dbConn5 = new SqlConnection();
    SqlDataReader dr, dr1, dr2;
    protected void Page_Load(object sender, EventArgs e)
    {


             // dbConn.ConnectionString="Data Source=173.248.137.198,1533;Initial Catalog=pumps;Trusted_Connection=True;"; 
     dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";



        selectSQL = "SELECT * from FlowRite where Category='ACC' order by Product_Name";
        dbConn.ConnectionString =  "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
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
            }
            else
            {
                Label1.Text = " No Record ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label1.Text = "Error  Logging in  ";
            Label1.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
    }
}
