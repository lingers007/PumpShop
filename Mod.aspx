<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mod.aspx.cs" Inherits="Mod" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Product Homepage</title>
    <style type="text/css">


        .style45
        {
            height: 22px;
        }


        </style>
        
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style=" text-decoration:none; width: 70%; height: 675px;" align="center" border="2">
            <tr>
                <td align="center" class="style45" 
                    style="color: #FFFFFF; background-color: #FFCC00;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        Font-Names="Candara" ForeColor="White" NavigateUrl="H.aspx">Home</asp:HyperLink>|<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                        Font-Names="Candara" ForeColor="White" NavigateUrl="Login.aspx">Log Out</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table  border='1' style="width: 921px">
                    <tr>
                        
                        <td class="style27" style="font-size: medium; font-weight: bold">
                            Image</td>
                        <td class="style29" style="font-size: medium; font-weight: bold">
                            Product Name</td>
                        <td class="style46" style="font-size: medium; font-weight: bold">
                            Product Description</td>
                            <td class="style46" style="font-size: medium; font-weight: bold">
                            Product Code</td>
                     
                
                        
                        <td class="style43" style="font-size: medium; font-weight: bold">
                            &nbsp;</td>
                     
                
                        
                    </tr>
            <%
                
                
                SqlCommand scz = new SqlCommand("select id,Product_Name,Product_Desc,Product_Code from FlowRite where Category='" + (Session["Cat"].ToString()) + "'", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               
                                 
                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {
                                //Session["pp"] = sdz["Product_Code"].ToString();

                                Response.Write("<tr style> <td class='style2'>" + " <div align='center'>" + "<img width='140' height='140' src='Product/" + sdz["Product_Code"].ToString() + ".jpg'>" + "</td><td class='style2'>" + sdz["Product_Name"].ToString() + "</td><td class='style5'>" + sdz["Product_Desc"].ToString() + "</td><td class='style5'>" + sdz["Product_Code"].ToString() + "</td><td class='style5'><a href='EditP.aspx?id=" + sdz["id"].ToString() + "'>Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='Deleted.aspx?id=" + sdz["id"].ToString() + "'>Delete</a></td></tr>");
                                ct++;
                               // Session["id"] = Request.QueryString["id"].ToString();
                            }

                dbConn.Close();

                          
                 %>
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                       
                       <td class="style28">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style45">
                            &nbsp;</td>
                        <td class="style47" style="font-size: small; font-weight: bold">
                            &nbsp;</td>
                      
                
                        
                
                        <td class="style44" style="font-size: small; font-weight: bold">
                            
                        </td>
                      
                
                        
                
                    </tr>

                    
                </table>
                <br />
                <asp:Label ID="Label101" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <br /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
