<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Gridview.aspx.vb" Inherits="Gridview" %>

<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1GridView"
    TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SpectrumDataConnectionString %>" 
            SelectCommand="SELECT [ExpenseDate], sum([ExpenseAmount]) as ExpenseAmount FROM [tblExpenses] WHERE (([ExpenseDate] &lt; @ExpenseDate) AND ([ExpenseDate] &gt;= @ExpenseDate2)) group by [ExpenseDate]">
            <SelectParameters>
                <asp:Parameter DefaultValue="2015-01-01" Name="ExpenseDate" Type="DateTime" />
                <asp:Parameter DefaultValue="1998-10-01" Name="ExpenseDate2" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>


        <wijmo:C1GridView ID="C1GridView1" runat="server" AllowCustomPaging="false" 
            AllowPaging="True" AllowSorting="True" AutogenerateColumns="False" 
            DataSourceID="SqlDataSource1" CssClass="col-xs-6" 
            HighlightCurrentCell="True" PageSize="10">
            <PagerSettings Mode="NumericFirstLast" />
            <Columns>
                <wijmo:C1BoundField DataField="ExpenseDate" ReadOnly="true" 
                    SortDirection="Ascending" HeaderText="Date" SortExpression="ExpenseDate" 
                    Width="25%">
                </wijmo:C1BoundField>
                <wijmo:C1BoundField DataField="ExpenseAmount" ReadOnly="false" HeaderText="Amount" SortExpression="ExpenseAmount" Width="10%" ApplyFormatInEditMode="True" Aggregate="None">
                </wijmo:C1BoundField>
                <wijmo:C1ButtonField Text="Button">
                </wijmo:C1ButtonField>
            </Columns>
        </wijmo:C1GridView>
    </div>
    
    </form>
</body>
</html>
