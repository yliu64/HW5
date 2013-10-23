Imports System.Net.Mail
Partial Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_copy.Text = DateTime.Now.Year
    End Sub

    Protected Sub btn_sendmessage_Click(sender As Object, e As EventArgs) Handles btn_sendmessage.Click
        Dim MyMessage As New MailMessage
        Try
            MyMessage.From = New MailAddress(tb_emailaddress.Text)
            MyMessage.To.Add("leottuce@gmail.com")
            MyMessage.Subject = "User Feedback"
            MyMessage.Body = tb_message.Text
            Dim SMTP As New SmtpClient("smtp.gmail.com")
            SMTP.Port = 587
            SMTP.EnableSsl = True
            SMTP.Send(MyMessage)
        Catch ex As Exception

        End Try
    End Sub
End Class
