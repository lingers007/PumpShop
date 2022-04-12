<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PAdd.aspx.cs" Inherits="PAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add A Product</title>
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
                    <table align="center" border="4" style="width: 79%; height: 582px;" 
                        bgcolor="#99CCFF">
            <tr>
                <td align="center">
    <div>
    
                    </div> <p align="center" style="width: 521px">
                    <img id="pimak" runat="server" src="" style="width: 154px; height: 143px" /><br />
                                    <asp:FileUpload ID="FileUpload123" runat="server" />&nbsp;&nbsp;
                                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Buttonl99" runat="server" 
                        Text="Upload" onclick="Buttonl99_Click" Width="88px" />
                                            </p>
   
    <p>
        <table style="border-style: none; border-color: inherit; border-width: 1; width: 95%; height: 153px; font-family: Candara; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; color: #008000;" 
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
                    <asp:TextBox ID="TextBox6" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Category</td>
                <td class="style2">
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
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="You must Select a Category" 
                        Operator="NotEqual" ValueToCompare="Select a Category"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
         <asp:Button ID="Button1" runat="server"   Text="Add" onclick="Button1_Click" 
                        style="height: 26px" Width="96px" />
    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
                </td>
            </tr>
        </table></td>
            </tr>
        </table>
    
        
    </div>
    </form>
</body>
</html>
