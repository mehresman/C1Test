<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Input"
    TagPrefix="wijmo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox runat="server"></asp:TextBox>
<asp:TextBox runat="server"></asp:TextBox>
    <wijmo:C1InputDate ID="C1InputDate1" runat="server" Date="07/31/2014 14:02:57">
    </wijmo:C1InputDate>


    <wijmo:C1InputMask ID="C1InputMask1" runat="server" MaskFormat="00/00/0000" HidePromptOnLeave="True">
    </wijmo:C1InputMask>
<asp:TextBox runat="server"></asp:TextBox>

</asp:Content>

