<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="MIS2800_Exam_3_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Exam 3 Grid View - Tanner Thomas</h1>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="flightId" DataSourceID="dsFlightGrid" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="flightId" HeaderText="flightId" ReadOnly="True" SortExpression="flightId" Visible="False" />
                    <asp:BoundField DataField="origin" HeaderText="Origin" SortExpression="origin" />
                    <asp:BoundField DataField="destination" HeaderText="Destination" SortExpression="destination" />
                    <asp:BoundField DataField="vesselId" HeaderText="Vessel #" SortExpression="vesselId" />
                    <asp:BoundField DataField="flightDeparture" HeaderText="Departure" SortExpression="flightDeparture" />
                    <asp:BoundField DataField="flightArrival" HeaderText="Arrival" SortExpression="flightArrival" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
            <a href="Default.aspx">Back</a><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsFlightGrid" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016e3flightConnectionString %>" DeleteCommand="DELETE FROM [Flight] WHERE [flightId] = @flightId" InsertCommand="INSERT INTO [Flight] ([flightId], [origin], [destination], [vesselId], [flightDeparture], [flightArrival]) VALUES (@flightId, @origin, @destination, @vesselId, @flightDeparture, @flightArrival)" SelectCommand="SELECT * FROM [Flight]" UpdateCommand="UPDATE [Flight] SET [destination] = @destination">
                <DeleteParameters>
                    <asp:Parameter Name="flightId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="flightId" Type="String" />
                    <asp:Parameter Name="origin" Type="String" />
                    <asp:Parameter Name="destination" Type="String" />
                    <asp:Parameter Name="vesselId" Type="Int32" />
                    <asp:Parameter Name="flightDeparture" Type="DateTime" />
                    <asp:Parameter Name="flightArrival" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="destination" Type="String" />
                </UpdateParameters>
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
