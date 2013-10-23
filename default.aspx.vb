
Partial Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbl_copy.Text = DateTime.Now.Year

    End Sub
End Class
