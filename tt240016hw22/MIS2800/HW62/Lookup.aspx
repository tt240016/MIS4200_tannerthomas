<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lookup.aspx.cs" Inherits="MIS2800_HW62_Lookup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.2 - Search - Thomas</h1>
            <h2>Ticket Search</h2>
            <br />
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            Enter Ticket Description:
            <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
            <asp:Button ID="btnGet" runat="server" Text="Get" />
            <br />
            <br />
            <asp:DetailsView ID="dvLookup" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ticketId" DataSourceID="dsCoursewithLookup" ForeColor="#333333" GridLines="None" Height="50px" Width="506px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ticketId" HeaderText="ticketId" InsertVisible="False" ReadOnly="True" SortExpression="ticketId" Visible="False" />
                    <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" Visible="False" />
                    <asp:BoundField DataField="techId" HeaderText="techId" SortExpression="techId" Visible="False" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="billedAmmount" HeaderText="Billed Amount" SortExpression="billedAmmount" />
                    <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                    <asp:BoundField DataField="Technican" HeaderText="Technican" ReadOnly="True" SortExpression="Technican" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
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
            <asp:SqlDataSource ID="dsCoursewithLookup" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT Ticket.ticketId, Ticket.customerId, Ticket.techId, Ticket.description, Ticket.billedAmmount, Customer.firstName + ' ' + Customer.lastName AS Customer, Technician.fName + ' ' + Technician.lName AS Technican FROM Customer INNER JOIN Ticket ON Customer.customerId = Ticket.customerId INNER JOIN Technician ON Ticket.techId = Technician.techId
where Ticket.description=@ticketDescription">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCourseName" Name="ticketDescription" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
