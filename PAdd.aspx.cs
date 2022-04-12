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
using System.IO;


public partial class PAdd : System.Web.UI.Page
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
    public string dbstring = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
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
       
   
    
 if (IsPostBack)
        {
        }

      
      
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        if (TextBox6.Text != "")
        {
            string imageFolder;
            imageFolder = Server.MapPath("Product/") + TextBox6.Text.ToString() + ".jpg";
            if (File.Exists(imageFolder))
            {
                selectSQL = "  SELECT Product_Desc,Product_Name FROM FlowRite  where  Product_Name='" + TextBox3.Text.Trim() + "'  ";
                //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";

                dbConn3.ConnectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
                //dbConn1.ConnectionString = "Data Source=NEW-VITAL\\SCHOOLSERVER; Initial Catalog=emma;Integrated Security=True;";

                cmd1.Connection = dbConn3;
                cmd1.CommandText = selectSQL;
                cmd1.CommandType = CommandType.Text;






                dbConn3.Open();
                dr = cmd1.ExecuteReader();

                if (dr.Read())
                {
                    // Response.Write(dr[0].ToString());
                    //Response.Write("xxxxxxxxxxxxxx" + dr["Teller"].ToString());
                    //AuthenButton.Enabled = true;
                    Label6.Text = "You have already  Entered  the Product";

                }


                else
                {


                    String insertSQL;
                    insertSQL = "INSERT INTO FlowRite(";
                    insertSQL += "Product_Name,Product_Desc,Product_Code,Category)";
                    insertSQL += "VALUES('";
                    insertSQL += TextBox3.Text.Trim() + "','";
                    insertSQL += TextBox4.Text.Trim() + "','";
                    insertSQL += TextBox6.Text.Trim() + "','";

                    insertSQL += DropDownList1.SelectedItem.Value + "')";



                    // insertSQL += TextBox5.Text + "@yahoo.com  ')";
                    // insertSQL += TextBox5.Text + "@yahoo.com  ')";




                    String connectionString = "Data Source=173.248.137.198,1533;Initial Catalog=pumps;User ID=admin2;password=password123;Integrated Security=false;";
                    SqlConnection con4 = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(insertSQL, con4);
                    int added = 0;


                    try
                    {
                        con4.Open();
                        added = cmd.ExecuteNonQuery();



                        // Label6.Text = added.ToString();


                        if (added == 1)
                        {
                            Response.Redirect("Added.aspx");
                            // Response.Write(V2.ToString());

                            //Label1.Text = Session["username"].ToString();
                            //  Response.Redirect("Tomatoes.aspx");
                        }
                        else
                        {
                            //Label6.Text = "Wahala dey";

                        }
                        // Label1.Text = added.ToString() + "records Inserted";
                    }



                    catch (Exception err)
                    {

                        Label6.Text += err.Message;
                    }
                    finally
                    {
                        con4.Close();
                    }

                }
            }
            else
            {
                Label6.Text = "Please Upload An Image";
            }
        }
        else
        {
            Label6.Text = "Please enter some text.";
        }
   


      
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Buttonl99_Click(object sender, EventArgs e)
    {

        string partt = Server.MapPath("Product").ToString() + "\\" + TextBox6.Text.ToString() + ".jpg";

        FileUpload123.PostedFile.SaveAs(partt);
        FileUpload123.PostedFile.InputStream.Dispose();
        FileUpload123.PostedFile.InputStream.Flush();
        pimak.Src = "Product/" + TextBox6.Text.ToString() + ".jpg";
        //String[] dd = Directory.GetFiles(Server.MapPath("Product").ToString());//.GetCurrentDirectory();
        //Label2.Text =dd[0];
    }
   
    
}
