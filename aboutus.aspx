<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="aboutus" %>

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
                <div id="text">             
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in convallis mauris. Sed sed nulla eu sem pellentesque vehicula auctor non purus. Nunc tellus tellus, volutpat ut ullamcorper non, scelerisque non purus. Morbi in augue et lorem porta tristique vel non orci. Aenean imperdiet ipsum sit amet odio vulputate, laoreet rutrum ipsum eleifend. Sed ornare lobortis orci, ac faucibus nibh laoreet id. Donec quis mi venenatis, bibendum est a, laoreet ipsum. In sapien nisi, luctus in risus sed, vestibulum suscipit sem. In elementum accumsan scelerisque.</p>
                <p>Maecenas tincidunt at mi placerat varius. Nam sit amet consectetur lacus. Quisque semper odio sit amet lacus vehicula convallis. Curabitur dignissim est facilisis tortor sagittis mollis nec ac lacus. Morbi a vestibulum tortor, nec volutpat nisl. Suspendisse sagittis quis libero et egestas. Proin et enim eu diam consectetur posuere. Donec pulvinar suscipit egestas. In vitae mauris ac ante aliquet lobortis. Aliquam fringilla dignissim ipsum et aliquet. Phasellus volutpat molestie nisl, quis viverra lorem adipiscing at. Quisque quis diam ac nibh pretium tempor. Etiam et venenatis mi, non rutrum arcu. Pellentesque ut nibh ac nisi gravida mattis.</p>
                <p>Vivamus ac libero sed diam sollicitudin sollicitudin non sollicitudin nibh. Cras eu euismod neque, quis porttitor odio. Cras ut mi eu mi aliquet volutpat. Duis mollis purus non nisi auctor dignissim. In scelerisque nisl non dignissim faucibus. Suspendisse vulputate molestie sollicitudin. Aliquam sit amet erat tristique risus adipiscing faucibus sit amet quis ligula. Morbi eget mattis arcu. Donec nunc augue, mattis quis egestas sit amet, feugiat et dui.</p>
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

