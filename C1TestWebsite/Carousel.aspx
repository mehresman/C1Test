<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Carousel.aspx.vb" Inherits="Carousel" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Carousel"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <wijmo:C1Carousel ID="C1Carousel1" runat="server" AutoPlay="True" 
            Height="300px" Preview="True" ShowTimer="True" Width="600px">
        </wijmo:C1Carousel>
    </div>
    </form>
</body>
</html>
