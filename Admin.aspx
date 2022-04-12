<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Myfoodwarehouse_Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Homepage</title>
    <style type="text/css">


        .style45
        {
            height: 22px;
        }


        .style61
    {
        width: 78px;
    }
    .style62
    {
        width: 151px;
    }
            
        </style>
        
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style=" text-decoration:none; width: 70%; height: 901px;" align="center" 
            border="2">
            <tr>
                <td align="center" class="style45" 
                    style="color: #FFFFFF; background-color: #FFCC00;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td align="center" 
                    
                    style="font-family: candara; font-size: large; font-weight: bold; font-style: normal; color: #000000">
                               















                   
                    Admin Login<br />
                    <br />
                    <br />
                    <br />
                               















<table border="1" align="center" style="width: 24%">
  <tr>
    <td class="style61"><b style="font-weight: bold">Username</b></td>
    <td class="style62">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
  </tr>
  <tr>
    <td class="style61"><b style="font-weight: bold">Password</b></td>
    <td class="style62">
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                            </td>
  </tr>
  <tr>
    <td class="style61">&nbsp;</td>
    <td class="style62">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
            Width="101px" />
      </td>
  </tr>
</table>







                                    <br />







                                    <asp:Label ID="Label18" runat="server" ></asp:Label>
                        <br />
                        <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
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
