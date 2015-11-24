
Partial Class Editor
    Inherits System.Web.UI.Page

    Protected Sub btnCustomize_Click(sender As Object, e As System.EventArgs) Handles btnCustomize.Click



    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Dim myRibbonTab As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonTabPage
            With myRibbonTab
                .Name = "rtabRick"
                .Text = "Rick's Tab"
            End With
            C1Editor1.RibbonUI.TabPages.Add(myRibbonTab)

            Dim myRibbonGroup As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonGroup
            With myRibbonGroup
                .Name = "rgrpRick"
                .HeaderText = "Rick's Group"
            End With
            myRibbonTab.Groups.Add(myRibbonGroup)

            Dim myRibbonButton As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonButton("imagebrowser", "Image Browser", "wijmo-wijribbon-imagebrowser")
            myRibbonGroup.Buttons.Add(myRibbonButton)


            Dim myTab As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonTabPage
            Dim myGroup As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonGroup
            Dim myButton As New C1.Web.Wijmo.Controls.C1Editor.C1RibbonButton

            myTab = C1Editor1.RibbonUI.TabPages(0)
            myGroup = myTab.Groups(0)
            textbox1.Text = myGroup.Buttons.Count

            For Each myButton In myGroup.Buttons
                C1Editor1.Text += (myButton.ToolTip + "<br />")
            Next
            myGroup.Buttons(0).Visible = False
            myTab.Groups.RemoveAt(0)

            textbox1.Focus()

        End If
    End Sub
End Class
