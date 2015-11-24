<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Tree.aspx.vb" Inherits="Tree" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1TreeView"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <wijmo:C1TreeView ID="C1TreeView1" runat="server">
        </wijmo:C1TreeView>
        <asp:SqlDataSource ID="mySQLDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT p.ParentID, p.ParentName, c.ChildID, c.ChildName
from tblParents p left outer join tblChildren c on p.ParentID = c.ParentID
order by p.ParentID, ChildID
"></asp:SqlDataSource>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />


    <asp:TreeView ID="tvw" runat="server"></asp:TreeView>



    </form>
</body>
</html>
