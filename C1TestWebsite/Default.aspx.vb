Imports C1.Web.Wijmo.Controls.C1Chart


Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then


            'With C1LineChart1
            '    .DataSourceID = "SqlDataSource1"

            '    'Dim c1ChartBinding As New C1ChartBinding
            '    'With c1ChartBinding
            '    '    .XField = "ExpenseDate"
            '    '    .XFieldType = ChartDataXFieldType.DateTime

            '    '    .YField = "ExpanseAmount"
            '    '    .YFieldType = ChartDataYFieldType.Number

            '    'End With

            '    '.DataBindings.Add(c1ChartBinding)

            '    ''.DataBind()



            'End With

        End If

    End Sub
End Class
