<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ComplicatedGridView.aspx.cs" Inherits="MIS2800_HW62_ComplicatedGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.2 - Complicated Gridded Detail View - Tanner Thomas</h1>
            <h2>Customer Details on a Bear Riding a Tricycle</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <asp:DropDownList ID="ddlSelectCustomer" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsSelectCustomer" DataTextField="Customer" DataValueField="customerId">
                <asp:ListItem Value="0">Select a customer</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DetailsView ID="dvCustomer" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="customerId" DataSourceID="dsDetails" Height="50px" Width="125px">
                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <Fields>
                    <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" Visible="False" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
                </Fields>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
            </asp:DetailsView>
            <br />
            <br />
            <br />
            <asp:GridView ID="gvTicket" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ticketId" DataSourceID="dsGridView" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="ticketId" HeaderText="ticketId" InsertVisible="False" ReadOnly="True" SortExpression="ticketId" Visible="False" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="billedAmmount" HeaderText="Billed Amount" SortExpression="billedAmmount" />
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsGridView" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [ticketId], [description], [billedAmmount] FROM [Ticket]
WHERE customerId=@ticketid">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSelectCustomer" Name="ticketid" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsSelectCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [customerId], [firstName] + ' ' + [lastName] AS Customer FROM [Customer]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="dsDetails" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT * FROM [Customer]
Where customerId=@customerId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSelectCustomer" Name="customerId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
