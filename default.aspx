<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

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
                <ul id="navlist">
                    <li><a href="default.aspx">Home</a></li>
                    <li><a href="recipe.aspx">All Recipes</a></li>
                    <li><a href="./newrecipe.aspx">New Recipe</a></li>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contact.aspx">Contact</a></li>
                </ul>
            </div>
            <div id="content">                
                           
            </div>
            <div id="footer">
                Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Yang Liu - 6K183 : Software Design and Development
            </div>  
         </div>       
    </div>
    </form>
</body>
</html>
