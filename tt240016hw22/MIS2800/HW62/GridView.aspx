<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="MIS2800_HW62_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.2 - Grid View</h1>
            <h2>All Tickets</h2>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ticketId,Expr1,Expr2" DataSourceID="dsGridView" GridLines="None">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        <asp:BoundField DataField="ticketId" HeaderText="ticketId" InsertVisible="False" ReadOnly="True" SortExpression="ticketId" Visible="False" />
                        <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" Visible="False" />
                        <asp:BoundField DataField="techId" HeaderText="techId" SortExpression="techId" Visible="False" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                        <asp:BoundField DataField="billedAmmount" HeaderText="Billed Amount" SortExpression="billedAmmount" />
                        <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
                        <asp:TemplateField HeaderText="Customer Name" SortExpression="customerName">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsGridView" DataTextField="customerName" DataValueField="ticketId" SelectedValue='<%# Bind("ticketId") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("customerName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Expr2" HeaderText="Expr2" InsertVisible="False" ReadOnly="True" SortExpression="Expr2" Visible="False" />
                        <asp:TemplateField HeaderText="Technician" SortExpression="fullName">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dsTechnician" DataTextField="fullName" DataValueField="techId" SelectedValue='<%# Bind("techId") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("fullName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </p>
            <p>
                &nbsp;</p>
            <br />
            <a href="../Default.aspx">Back</a><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsTechnician" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [techId], [fName] + ' ' + [lName] AS fullName FROM [Technician]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsGridView" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" DeleteCommand="DELETE FROM [Ticket] WHERE [ticketId] = @ticketId" InsertCommand="INSERT INTO [Ticket] ([customerId], [techId], [description], [billedAmmount]) VALUES (@customerId, @techId, @description, @billedAmmount)" SelectCommand="SELECT Ticket.ticketId, Ticket.customerId, Ticket.techId, Ticket.description, Ticket.billedAmmount, Customer.customerId AS Expr1, Customer.firstName + ' ' + Customer.lastName AS customerName, Technician.techId AS Expr2, Technician.fName + ' ' + Technician.lName AS fullName FROM Customer INNER JOIN Ticket ON Customer.customerId = Ticket.customerId INNER JOIN Technician ON Ticket.techId = Technician.techId" UpdateCommand="UPDATE [Ticket] SET [customerId] = @customerId, [techId] = @techId, [description] = @description, [billedAmmount] = @billedAmmount WHERE [ticketId] = @ticketId">
                <DeleteParameters>
                    <asp:Parameter Name="ticketId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="customerId" Type="Int32" />
                    <asp:Parameter Name="techId" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="billedAmmount" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="customerId" Type="Int32" />
                    <asp:Parameter Name="techId" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="billedAmmount" Type="Decimal" />
                    <asp:Parameter Name="ticketId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
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
