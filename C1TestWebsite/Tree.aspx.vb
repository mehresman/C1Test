Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.ApplicationBlocks.Data


Partial Class Tree
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click

        Dim ds As New dataset
        Dim dtParents As New DataTable
        Dim dtChildren As New DataTable
        Dim myRelationship As DataRelation
        Dim myPK As DataColumn
        Dim myFK As DataColumn

        Dim myDataAdapter As SqlDataAdapter


        Try
            myDataAdapter = New SqlDataAdapter
            myDataAdapter = New SqlDataAdapter("select * from tblParents order by parentID desc", "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
            myDataAdapter.Fill(ds, "tblParents")

            myDataAdapter = New SqlDataAdapter
            myDataAdapter = New SqlDataAdapter("select * from tblChildren order by parentID, ChildID", "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
            myDataAdapter.Fill(ds, "tblChildren")

            myPK = ds.Tables("tblParents").Columns("ParentID")
            myFK = ds.Tables("tblChildren").Columns("ParentID")

            myRelationship = New DataRelation("ParentID_ParentID", myPK, myFK)
            ds.Relations.Add(myRelationship)

            'With tvw
            '    .DataSource = ds
            '    .DataBind()
            'End With
            Dim tnb As New TreeNodeBinding
            With tnb
                .DataMember = "System.Data.DataRowView"
                .TextField = "ParentName"
                .ValueField = "ParentID"
                .PopulateOnDemand = False
                .SelectAction = TreeNodeSelectAction.Select
            End With

            With tvw
                .DataBindings.Add(tnb)
                .DataSource = New BindingTools.HierarchicalDataSet(ds, "ID", "ParentID")
            End With

            '11-24-15 MCE removed semicolons from the following lines to clear errors
            tnb.DataMember = "System.Data.DataRowView"
            tnb.TextField = "Text"
            tnb.ValueField = "ID"
            tnb.PopulateOnDemand = False
            tnb.SelectAction = TreeNodeSelectAction.Select
            TreeViewPS.DataBindings.Add(tnb)

            TreeViewPS.DataSource = New BindingTools.HierarchicalDataSet(DataSet, "ID", "ParentID")
            TreeViewPS.DataBind()

        Catch ex As Exception
            Dim s As String
            s = ex.Message
            s = ""
        Finally
            myFK = Nothing
            myPK = Nothing
            myRelationship = Nothing
            dtChildren = Nothing
            dtParents = Nothing
            ds = Nothing
        End Try
    End Sub
End Class
