<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dropdown.aspx.cs" Inherits="MIS2800_HW62_Dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.2 - Search (Dropdown) - Tanner Thomas</h1>
            <h2>Ticket Search</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            Select Ticket:
            <asp:DropDownList ID="ddlDescription" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsDescription" DataTextField="description" DataValueField="ticketId">
                <asp:ListItem Value="0">Select Ticket</asp:ListItem>
            </asp:DropDownList>
            <asp:DetailsView ID="dvSelection" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ticketId" DataSourceID="dsDropdown" ForeColor="#333333" GridLines="None" Height="50px" Width="643px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ticketId" HeaderText="ticketId" InsertVisible="False" ReadOnly="True" SortExpression="ticketId" Visible="False" />
                    <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" Visible="False" />
                    <asp:BoundField DataField="techId" HeaderText="techId" SortExpression="techId" Visible="False" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="billedAmmount" HeaderText="Billed Amount" SortExpression="billedAmmount" />
                    <asp:BoundField DataField="Technician" HeaderText="Technician" ReadOnly="True" SortExpression="Technician" />
                    <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
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
            <asp:SqlDataSource ID="dsDescription" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [description], [ticketId] FROM [Ticket]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsDropdown" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT Ticket.*, Technician.fName + ' ' + Technician.lName AS Technician , Customer.firstName + ' ' + Customer.lastName AS Customer FROM Customer INNER JOIN Ticket ON Customer.customerId = Ticket.customerId INNER JOIN Technician ON Ticket.techId = Technician.techId
Where ticketId=@ticketId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlDescription" Name="ticketId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
