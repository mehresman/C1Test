<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Tabs.aspx.vb" Inherits="Tabs" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Accordion"
    TagPrefix="wijmo" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Tabs"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="label1" runat="server"></asp:Label>
        <wijmo:C1Tabs ID="C1Tabs1" runat="server" Collapsible="True" 
            Scrollable="True" AutoPostBack="True">
            <Pages>
                <wijmo:C1TabPage runat="server" Text="Tab1" ID="Tab1">
                    tab 1
                </wijmo:C1TabPage>
                <wijmo:C1TabPage runat="server" Text="Tab2" ID="Tab2">
                    tab 2
                </wijmo:C1TabPage>
                <wijmo:C1TabPage runat="server" Text="Tab3" ID="Tab3">
                    tab 3
                </wijmo:C1TabPage>
                <wijmo:C1TabPage runat="server" Text="Tab4" ID="Tab4">
                    tab 4
                </wijmo:C1TabPage>
            </Pages>
        </wijmo:C1Tabs>
        <wijmo:C1Accordion ID="C1Accordion1" runat="server" SelectedIndex="0    " 
            AutoPostBack="True" ExpandDirection="Top">
            <Panes>
                <wijmo:C1AccordionPane ID="C1Accordion1Pane1" runat="server">
                    <Header>section 1 Title
                    </Header>
                    <Content>
                    </Content>
                </wijmo:C1AccordionPane>
                <wijmo:C1AccordionPane ID="C1Accordion1Pane2" runat="server">
                    <Header>section 2 title
                    </Header>
                    <Content>
                    </Content>
                </wijmo:C1AccordionPane>
                <wijmo:C1AccordionPane ID="C1Accordion1Pane3" runat="server" Expanded="True">
                    <Header>section 3 title
                    </Header>
                    <Content>
                    </Content>
                </wijmo:C1AccordionPane>
                <wijmo:C1AccordionPane ID="C1Accordion1Pane4" runat="server">
                    <Header>section 4 title
                    </Header>
                    <Content>
                    </Content>
                </wijmo:C1AccordionPane>
            </Panes>
        </wijmo:C1Accordion>
    </div>
    </form>
</body>
</html>
