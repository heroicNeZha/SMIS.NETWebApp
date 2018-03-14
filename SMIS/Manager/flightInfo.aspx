﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="flightInfo.aspx.cs" Inherits="SMIS.Manager.flightInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height:50px;width:90%">
        <h3>>>>航班管理</h3>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderStyle="Solid" CellPadding="20" 
        CssClass="table-bordered" DataSourceID="SqlDataSource2" Font-Size="Large" Height="50px" HorizontalAlign="Center" Width="90%" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <HeaderStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="航班" HeaderText="航班" SortExpression="航班" />
            <asp:BoundField DataField="始发地" HeaderText="始发地" SortExpression="始发地" />
            <asp:BoundField DataField="目的地" HeaderText="目的地" SortExpression="目的地" />
            <asp:BoundField DataField="起飞时间" HeaderText="起飞时间" SortExpression="起飞时间" />
            <asp:BoundField DataField="到达时间" HeaderText="到达时间" SortExpression="到达时间" />
            <asp:BoundField DataField="座位数" HeaderText="座位数" SortExpression="座位数" />
            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:airDBConnectionString %>" 
        SelectCommand="SELECT fid AS ID, fname AS 航班, fstartplace AS 始发地, fendplace AS 目的地, fstarttime AS 起飞时间, fendtime AS 到达时间, fseat AS 座位数, fprice AS 价格 FROM flight" 
        UpdateCommand="UPDATE flight SET fname = @航班, fstartplace = @始发地, fendplace = @目的地, fstarttime = @起飞时间, fendtime = @到达时间, fseat = @座位数, fprice = @价格 Where fid = @ID" DeleteCommand="DELETE FROM flight WHERE (fid = @ID)"
        >
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="航班" />
            <asp:Parameter Name="始发地" />
            <asp:Parameter Name="目的地" />
            <asp:Parameter Name="起飞时间" />
            <asp:Parameter Name="到达时间" />
            <asp:Parameter Name="座位数" />
            <asp:Parameter Name="价格" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>