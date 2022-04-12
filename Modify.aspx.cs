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
using System.IO;

public partial class Modify : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Cat"] = DropDownList1.SelectedItem.Value.ToString();
        
        selectSQL = "  SELECT * from FlowRite where  Category='" + DropDownList1.SelectedItem.Value.ToString() + "'  ";
        //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";

        dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            dbConn.Open();
            //Response.Write(selectSQL);

            // Response.Write(Session["E"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Redirect("Mod.aspx");
            }


            else
            {
                Label1.Text = "No Records  ";
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
