
Partial Class Tabs
    Inherits System.Web.UI.Page



    Protected Sub C1Tabs1_SelectedChanged(sender As Object, e As System.EventArgs) Handles C1Tabs1.SelectedChanged

        label1.Text = C1Tabs1.Selected.ToString

    End Sub

    Protected Sub C1Accordion1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles C1Accordion1.SelectedIndexChanged

        label1.Text = C1Accordion1.SelectedIndex

    End Sub
End Class
