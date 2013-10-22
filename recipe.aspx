<%@ Page Language="VB" AutoEventWireup="false" CodeFile="recipe.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="recipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipe %>" 
            SelectCommand="SELECT * FROM [Table]" 
            DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Table] ([name], [submittedBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prepration], [notes]) VALUES (@name, @submittedBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prepration, @notes)" 
            UpdateCommand="UPDATE [Table] SET [name] = @name, [submittedBy] = @submittedBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prepration] = @prepration, [notes] = @notes WHERE [Id] = @Id">
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
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="recipeDataSource" AllowPaging="True" AllowSorting="True" Width="1097px" PageSize="5">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="recipedetails.aspx?Id={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
