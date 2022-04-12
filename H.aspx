<%@ Page Language="C#" AutoEventWireup="true" CodeFile="H.aspx.cs" Inherits="Myfoodwarehouse_H" %>

<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Homepage</title>
    <style type="text/css">


        .style45
        {
            height: 22px;
        }


        .style46
        {
            width: 248px;
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
                        Font-Names="Candara" ForeColor="White" NavigateUrl="Login.aspx">Log Out</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table border="2" style="width: 30%; background-color: #FFCC00;">
                        <tr>
                            <td align="center" class="style46">
                                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                    Font-Names="Candara" Font-Size="Medium" NavigateUrl="PAdd.aspx">Add A Product 
                                Order</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style46">
                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                                    Font-Names="Candara" Font-Size="Medium" NavigateUrl="Modify.aspx">Modify A 
                                Product </asp:HyperLink>
                            </td>
                        </tr>
                       
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
