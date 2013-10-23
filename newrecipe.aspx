<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipe %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([name], [submittedBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prepration], [notes]) VALUES (@name, @submittedBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prepration, @notes)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [name] = @name, [submittedBy] = @submittedBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prepration] = @prepration, [notes] = @notes WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prepration" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prepration" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
                <asp:DetailsView ID="DetailsView1" 
                    runat="server" 
                    AutoGenerateRows="False" 
                    DataKeyNames="Id" 
                    DataSourceID="SqlDataSource1" 
                         HeaderText="Recipe Details"
                    CssClass="cssdetailsview"
                    HeaderStyle-CssClass="header"
                    FieldHeaderStyle-CssClass="fieldheader"
                    ItemStyle-CssClass="item"
                    CommandRowStyle-CssClass="command"
                    PagerStyle-CssClass="pager"                   
                    DefaultMode="Insert"
                    >

                    <Fields>
                        <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                        <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                        <asp:BoundField DataField="ing1" HeaderText="Ingredient #1" SortExpression="ing1" />
                        <asp:BoundField DataField="ing2" HeaderText="Ingredient #2" SortExpression="ing2" />
                        <asp:BoundField DataField="ing3" HeaderText="Ingredient #3" SortExpression="ing3" />
                        <asp:BoundField DataField="ing4" HeaderText="Ingredient #4" SortExpression="ing4" />
                        <asp:BoundField DataField="ing5" HeaderText="Ingredient #5" SortExpression="ing5" />
                        <asp:BoundField DataField="prepration" HeaderText="Prepration" SortExpression="prepration" />
                        <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </div>
            <br /><br />
            <div id="footer">
                Copyright &copy; <asp:Label ID="lbl_copy" runat="server" Text=""></asp:Label> Yang Liu - 6K183 : Software Design and Development
            </div>  
         </div>    
    </div>
    </form>
</body>
</html>
