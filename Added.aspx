<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Added.aspx.cs" Inherits="Added" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Added Page</title>
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
                        Font-Names="Candara" ForeColor="White" NavigateUrl="PAdd.aspx">Home</asp:HyperLink>|<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                        Font-Names="Candara" ForeColor="White" NavigateUrl="Login.aspx">Log Out</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="center" 
                    style="font-family: 'Century Gothic'; font-size: x-large; font-weight: bold; color: #009900">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    YOU HAVE SUCCESSFULLY ADDDED THE PRODUCT<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                        Text="Button" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
        
    </div>
    </form>
</body>
</html>
