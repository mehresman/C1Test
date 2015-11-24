Imports System.Security.Principal

Public Class frmWindowsAuthentication

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click

        Dim myIdentity As WindowsIdentity
        myIdentity = WindowsIdentity.GetCurrent
        MsgBox(myIdentity.IsAuthenticated)
        MsgBox(myIdentity.Name)


    End Sub
End Class