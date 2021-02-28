<%@ Page Language="C#" AutoEventWireup="true" CodeFile="droplist.aspx.cs" Inherits="MIS2800_IC62_droplist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Dropdown Menu - Tanner Thomas</h1>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <br />
            <br />
            <asp:DropDownList ID="ddlInventor" runat="server" AutoPostBack="True" DataSourceID="dsInventor" DataTextField="Name" DataValueField="inventorId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsInventor" runat="server" ConnectionString="<%$ ConnectionStrings:crowdfundingtt240016ConnectionString %>" SelectCommand="SELECT inventorId, fname + ' ' + lname AS Name FROM Inventor"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="stuffID" DataSourceID="dsInventions" ForeColor="#333333" GridLines="None" style="margin-right: 0px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="stuffID" HeaderText="stuffID" InsertVisible="False" ReadOnly="True" SortExpression="stuffID" />
                    <asp:BoundField DataField="inventorID" HeaderText="inventorID" SortExpression="inventorID" />
                    <asp:BoundField DataField="stuffName" HeaderText="stuffName" SortExpression="stuffName" />
                    <asp:BoundField DataField="stuffDescription" HeaderText="stuffDescription" SortExpression="stuffDescription" />
                    <asp:BoundField DataField="threshold" HeaderText="threshold" SortExpression="threshold" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="dsInventions" runat="server" ConnectionString="<%$ ConnectionStrings:crowdfundingtt240016ConnectionString %>" SelectCommand="SELECT * FROM [GeekyStuff] WHERE ([inventorID] = @inventorID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlInventor" Name="inventorID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
