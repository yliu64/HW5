<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="container">
            <div id="menu">
                <h1>Wicked Easy Recipes</h1>
                Using 5 Ingedients or Less!
                <ul id="navlist">
                    <li><a href="default.aspx">Home</a></li>
                    <li><a href="recipe.aspx">All Recipes</a></li>
                    <li><a href="./newrecipe.aspx">New Recipe</a></li>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contact.aspx">Contact</a></li>
                </ul>
            </div>
            <div id="content">
        
                
                <asp:Label ID="lbl_emailaddress" runat="server" Text="Your Email Address:"></asp:Label>
                <br />
                <asp:TextBox ID="tb_emailaddress" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lbl_message" runat="server" Text="Your Message:"></asp:Label>
                <br />
                <asp:TextBox ID="tb_message" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btn_sendmessage" runat="server" Text="Send Message" BackColor="LightCoral" BorderColor="White" BorderStyle="None" BorderWidth="10px" CssClass="header" Font-Names="Segoe Print" ForeColor="White" Height="62px" Width="159px" />
                <br />
                <br />
                <br />
        
                
            </div>   
            <div id="footer">
                Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Yang Liu - 6K183 : Software Design and Development
            </div>  
            </div>       
        </div>
    </div>
    </form>
</body>
</html>