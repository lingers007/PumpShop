<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditP.aspx.cs" Inherits="EditP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Edit A Product</title>
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
                    <p align="center" style="width: 521px">
                    <img id="pimak" runat="server" src="" style="width: 154px; height: 143px" /><br />
                                    <asp:FileUpload ID="FileUpload123" runat="server" />&nbsp;&nbsp;
                                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Buttonl99" runat="server" 
                        Text="Upload" onclick="Buttonl99_Click" Width="88px" />
                                            </p>
   
    <p>
        <table style="border-style: none; border-color: inherit; border-width: 1; width: 73%; height: 153px; font-family: Candara; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; color: #008000;" 
            align="center" bgcolor="#99CCFF" >
            <tr>
                <td class="style1">
                    Name</td>
                <td class="style2" align="left">
                    <asp:TextBox ID="TextBox3" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Description </td>
                <td class="style2" align="left">
                    <asp:TextBox ID="TextBox4" runat="server" Width="254px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    Product Code </td>
                <td class="style2" align="left">
                    <asp:TextBox ID="TextBox6" runat="server" Enabled="false"   Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
                </td>
                <td class="style2">
         <asp:Button ID="Button1" runat="server"   Text="Update" onclick="Button1_Click" 
                        style="height: 26px" />
    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

