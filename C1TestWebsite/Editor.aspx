<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Editor.aspx.vb" Inherits="Editor" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Editor"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCustomize" runat="server" text="customize"/>
        <wijmo:C1Editor ID="C1Editor1" runat="server" Width="100%">
        </wijmo:C1Editor>
    </div>
    </form>
</body>
</html>
