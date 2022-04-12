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

public partial class EditP : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();

    public SqlConnection dbConn = new SqlConnection();
    public SqlConnection dbConn1 = new SqlConnection();
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



        if (IsPostBack)
        {
            // Simak.Src = "passport/" + Session["AdmissionNo"] + ".jpg";
        }
        else
        {
            Session["id"] = Request.QueryString["id"].ToString();
            //Response.Write();
            selectSQL = "select * from FlowRite  WHERE id ='" + Session["id"].ToString() + "' ";

            dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";


            //TextBox130.Text = Session["AdmissionNo"].ToString();

            cmd.Connection = dbConn;
            cmd.CommandText = selectSQL;
            cmd.CommandType = CommandType.Text;
            try
            {
                dbConn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {






                    Session["cc"] = dr["Category"].ToString();
                    //TextBox5.Text = Session["t"].ToString();


                    TextBox3.Text = dr["Product_Name"].ToString();

                    TextBox4.Text = dr["Product_Desc"].ToString();

                    Session["pp"] = dr["Product_Code"].ToString();
                    TextBox6.Text = dr["Product_Code"].ToString();

                  //  Response.Write(Session["pp"]);
                    pimak.Src = "Product/" + Session["pp"].ToString() + ".jpg";


                }
                dr.Close();
            }
            catch (Exception err)
            {
                Label6.Text = "Error  Getting record";
                Label6.Text += err.Message;
            }
            finally
            {
                dbConn.Close();
            }
        }
    }
    protected void Buttonl99_Click(object sender, EventArgs e)
    {

    }
    public static class Utility
    {
        public static string EscapeApostrophes(string input)
        {
            return input.Replace("'", "''");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session["PASSWORD"] = TextBox1.Text;











        updateSQL = "UPDATE  FlowRite  set ";
        updateSQL += "Product_Name=@Product_Name,Product_Desc=@Product_Desc,Product_Code=@Product_Code  WHERE id=@id ";

        dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;"; 
        //TextBox130.Text = Session["AdmissionNo"].ToString();

        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@Product_Name", TextBox3.Text.ToString());
        cmd.Parameters.AddWithValue("@Product_Desc", TextBox4.Text.ToString());
        cmd.Parameters.AddWithValue("@Product_Code", TextBox6.Text.ToString());
        cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
        
        try
        {

            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            Response.Write(updateSQL);
            
            if (updated == 1)
            {

            Response.Redirect("MP.aspx");
            }
            else
            {


                 Label6.Text = "Process not Completed";
            }

            // Label1.Text = added.ToString() + "records Inserted";

        }
        catch (Exception err)
        {
            Label6.Text = "Error Modifying News";
            Label6.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }   
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {






        updateSQL = "UPDATE  FlowRite  set ";
        updateSQL += "Product_Name=@Product_Name,Product_Desc=@Product_Desc,Product_Code=@Product_Code  WHERE id=@id ";

        dbConn.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
        //TextBox130.Text = Session["AdmissionNo"].ToString();

        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@Product_Name", TextBox3.Text.ToString());
        cmd.Parameters.AddWithValue("@Product_Desc", TextBox4.Text.ToString());
        cmd.Parameters.AddWithValue("@Product_Code", TextBox6.Text.ToString());
        cmd.Parameters.AddWithValue("@id", Session["id"].ToString());

        try
        {

            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            Response.Write(updateSQL);

            if (updated == 1)
            {

               Response.Redirect("MP.aspx");
            }
            else
            {


                Label6.Text = "Process not Completed";
            }

            // Label1.Text = added.ToString() + "records Inserted";

        }
        catch (Exception err)
        {
            Label6.Text = "Error Modifying News";
            Label6.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        } 
    }
}

