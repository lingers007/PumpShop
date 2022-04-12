<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Modify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Modify an Image</title>
    <style type="text/css">


        .style45
        {
            height: 22px;
        }


        .style46
        {
            width: 294px;
        }
        .style47
        {
            width: 215px;
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
                    
                    <table style="width:100%;" bgcolor="#99CC00" border="4">
                        <tr>
                            <td class="style46" 
                                style="font-family: 'Century Gothic'; font-size: large; font-weight: bold; color: #008000">
                    Category</td>
                            <td class="style47">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="255px" 
                        Font-Bold="True" Font-Size="Medium" >
                                    
                        <asp:ListItem>Select a Category</asp:ListItem>
                        <asp:ListItem Value="ACC">Centrifugal Pump</asp:ListItem>
                        <asp:ListItem Value="FLOW">Flowmeter Pump</asp:ListItem>
                        <asp:ListItem Value="FOUN">Fountain Pump</asp:ListItem>
                        <asp:ListItem Value="METER">Metering Pump</asp:ListItem>
                        <asp:ListItem Value="SEWA">Sewage Pump</asp:ListItem>
                        
                        <asp:ListItem Value="SUB">Submersible Pump</asp:ListItem>
                        <asp:ListItem Value="SURF">Surface Pump</asp:ListItem>
                       
                        <asp:ListItem Value="SWIM">Swimming Pump</asp:ListItem>
                        <asp:ListItem Value="VERT">Vertical Pump</asp:ListItem>
                        <asp:ListItem Value="ACC">Pump Accessories</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="You must Select a Category" 
                        Operator="NotEqual" ValueToCompare="Select a Category"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style46">
                                &nbsp;</td>
                            <td class="style47">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style46">
                                &nbsp;</td>
                            <td class="style47">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server"   Text="Modify" onclick="Button1_Click" 
                        style="height: 26px" Width="150px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#006600"></asp:Label>
                    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
