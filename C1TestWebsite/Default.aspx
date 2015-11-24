<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Chart" TagPrefix="wijmo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SpectrumDataConnectionString %>" 
            SelectCommand="SELECT [ExpenseDate], sum([ExpenseAmount]) as ExpenseAmount FROM [tblExpenses] WHERE (([ExpenseDate] &lt; @ExpenseDate) AND ([ExpenseDate] &gt;= @ExpenseDate2)) group by [ExpenseDate]">
            <SelectParameters>
                <asp:Parameter DefaultValue="2010-01-01" Name="ExpenseDate" Type="DateTime" />
                <asp:Parameter DefaultValue="2009-10-01" Name="ExpenseDate2" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>

        

       <%-- <wijmo:C1LineChart ID="C1LineChart1" runat="server" Culture="en-US" Type="area" 
            DisableDefaultTextStyle="True" ShowChartLabels="False">
            <SeriesTransition Duration="2000"></SeriesTransition>
            <Animation Duration="2000"></Animation>
            <ChartLabelStyle>
            </ChartLabelStyle>
            <SeriesStyles>
                <wijmo:ChartStyle Stroke="#990033" StrokeWidth="2">
                    <Fill Color=#F8BF00></Fill>
                </wijmo:ChartStyle>
            </SeriesStyles>
            <Hint CalloutFilled="True" Content-Function="function () {return this.y;}">
                
            </Hint>
            <Header Compass="North" Text="Chart Header Goes HERE"></Header>
            <Footer Compass="South" Visible="False"></Footer>
            <Legend>
                <Style FontSize="14" FontWeight="bold">
                </Style>
                <LegendStyle FontSize="14" FontWeight="bold">
                </LegendStyle>
                <TextStyle FontSize="14">
                </TextStyle>
                <Size Width="30" Height="3"></Size>
            </Legend>
            <Axis>
                <X TextStyle-Rotation="-45">
                    <GridMajor Visible="True"></GridMajor>
                    <GridMinor Visible="False"></GridMinor>
                </X>
                <Y Visible="False" Compass="West">
                    <Labels TextAlign="Center"></Labels>
                    <GridMajor Visible="True"></GridMajor>
                    <GridMinor Visible="true"></GridMinor>
                </Y>
            </Axis>
            <DataBindings>
                <wijmo:C1ChartBinding Label="" LegendEntry="True" Visible="True" 
                    XField="ExpenseDate" XFieldType="DateTime" YField="ExpenseAmount" />
            </DataBindings>
            <SeriesList>
                <wijmo:LineChartSeries Markers-Type=Circle Markers-Visible=true></wijmo:LineChartSeries>
            </SeriesList>
        </wijmo:C1LineChart>--%>


    
    </div>

<script src="Scripts/bootstrap.js" type="text/javascript"></script>

    </form>
</body>
</html>
