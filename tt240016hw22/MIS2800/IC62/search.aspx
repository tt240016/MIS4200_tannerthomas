<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="MIS2800_IC62_search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Search - Tanner Thomas</h1>
            IC6.2<br />
            <br />
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <asp:TextBox ID="DescriptionSearchBox" runat="server"></asp:TextBox>
            <asp:Button ID="searchBtn" runat="server" Text="Search" />
            <br />
            <br />
            <br />
            <asp:GridView ID="gvSearch" runat="server" AutoGenerateColumns="False" DataKeyNames="stuffID" DataSourceID="dsSearch">
                <Columns>
                    <asp:BoundField DataField="stuffID" HeaderText="stuffID" InsertVisible="False" ReadOnly="True" SortExpression="stuffID" />
                    <asp:BoundField DataField="inventorID" HeaderText="inventorID" SortExpression="inventorID" />
                    <asp:BoundField DataField="stuffName" HeaderText="stuffName" SortExpression="stuffName" />
                    <asp:BoundField DataField="stuffDescription" HeaderText="stuffDescription" SortExpression="stuffDescription" />
                    <asp:BoundField DataField="threshold" HeaderText="threshold" SortExpression="threshold" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsSearch" runat="server" ConnectionString="<%$ ConnectionStrings:crowdfundingtt240016ConnectionString %>" SelectCommand="SELECT * FROM [GeekyStuff] WHERE ([stuffDescription] LIKE '%' + @stuffDescription + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DescriptionSearchBox" Name="stuffDescription" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
