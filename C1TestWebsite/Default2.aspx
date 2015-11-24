<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>
<%@ Register Assembly="C1.Web.Wijmo.Controls.3" Namespace="C1.Web.Wijmo.Controls.C1Chart" TagPrefix="wijmo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SpectrumDataConnectionString %>" 
            SelectCommand="SELECT [ExpenseDate], sum([ExpenseAmount]) as ExpenseAmount FROM [tblExpenses] WHERE (([ExpenseDate] &lt; @ExpenseDate) AND ([ExpenseDate] &gt;= @ExpenseDate2)) group by [ExpenseDate]">
            <SelectParameters>
                <asp:Parameter DefaultValue="2010-01-01" Name="ExpenseDate" Type="DateTime" />
                <asp:Parameter DefaultValue="2009-10-01" Name="ExpenseDate2" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>

        

        <wijmo:C1LineChart ID="C1LineChart1" runat="server" Culture="en-US" Type="area" 
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
        </wijmo:C1LineChart>


</asp:Content>

