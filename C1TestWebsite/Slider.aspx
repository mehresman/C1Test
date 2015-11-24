<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Slider.aspx.vb" Inherits="Slider" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Slider"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        
        <table width="100%">
            <tr>
                <td width="20%"><wijmo:C1Slider ID="C1Slider1" runat="server" Max="5" 
                        Animate="True" /></td>
                <td width="20%"><wijmo:C1Slider ID="C1Slider2" runat="server" Max="5" 
                        Animate="False" /></td>
                <td width="20%"><wijmo:C1Slider ID="C1Slider3" runat="server" Max="5" Animate="False"   Orientation="Vertical" /></td>
                <td width="20%"><wijmo:C1Slider ID="C1Slider4" runat="server" Max="5" Animate="False"   Orientation="Vertical" /></td>
                <td width="20%"><wijmo:C1Slider ID="C1Slider5" runat="server" Max="5" Animate="False"   Orientation="Vertical" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
