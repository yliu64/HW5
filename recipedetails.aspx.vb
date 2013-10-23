
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delRecipe As String = e.Values("name").ToString()

        lbl_delRecipe.Text = "The record <span class=deletedrecipeshight>" & delRecipe & "</span> has been deleted from the database."

        ' Response.Write("The record")
        ' Response.Write("<span class=deletedrecipeshight> ")
        ' Response.Write(delRecipe)
        ' Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=./recipe.aspx")

        ' Response.Write("The record has been deleted from the database.")

    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./recipe.aspx")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        ' Response.Redirect("./recipe.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbl_copy.Text = DateTime.Now.Year

    End Sub
End Class
