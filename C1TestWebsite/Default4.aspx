<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Input"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Working with GIT</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <wijmo:C1InputDate ID="C1InputDate1" runat="server" TabAction="Control">
        </wijmo:C1InputDate>
        <br />
        <wijmo:C1InputDate ID="C1InputDate2" runat="server" Date="07/31/2014 14:05:00" 
            DateFormat="t" DisplayFormat="t">
<PopupPosition>
<Offset Top="4"></Offset>
</PopupPosition>
            <Pickers>
                <TimePicker Visible="True" />
            </Pickers>
        </wijmo:C1InputDate>
    </div>
    </form>
</body>
</html>
