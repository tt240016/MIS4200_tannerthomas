<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailView.aspx.cs" Inherits="MIS2800_DetailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.2 - Details View - Tanner Thomas</h1>
            <h2>Ticket Details</h2>
            <p><a href="../Default.aspx">Go Back Home</a></p>
            <asp:DetailsView ID="dvDetails" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ticketId" DataSourceID="dsDetails" GridLines="None" Height="50px" Width="457px">
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ticketId" HeaderText="ticketId" InsertVisible="False" ReadOnly="True" SortExpression="ticketId" Visible="False" />
                    <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" Visible="False" />
                    <asp:BoundField DataField="techId" HeaderText="techId" SortExpression="techId" Visible="False" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="billedAmmount" HeaderText="Billed Amount" SortExpression="billedAmmount" />
                    <asp:TemplateField HeaderText="Customer" SortExpression="customerFull">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsCustomer" DataTextField="Customer" DataValueField="customerId">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("customerFull") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("customerFull") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Technician" SortExpression="techFull">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dsTech" DataTextField="Technician" DataValueField="techId">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("techFull") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("techFull") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" />
                </Fields>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
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
            <asp:SqlDataSource ID="dsTech" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [techId], [fName] + ' ' + [lName] AS Technician FROM [Technician]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" SelectCommand="SELECT [customerId], [firstName] + ' ' + [lastName] AS Customer FROM [Customer]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsDetails" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingh62ConnectionString %>" DeleteCommand="DELETE FROM [Ticket] WHERE [ticketId] = @ticketId" InsertCommand="INSERT INTO [Ticket] ([customerId], [techId], [description], [billedAmmount]) VALUES (@customerId, @techId, @description, @billedAmmount)" SelectCommand="SELECT Ticket.ticketId, Ticket.customerId, Ticket.techId, Ticket.description, Ticket.billedAmmount, Customer.firstName + ' ' + Customer.lastName AS customerFull, Technician.fName + ' ' + Technician.lName AS techFull FROM Ticket INNER JOIN Customer ON Ticket.customerId = Customer.customerId INNER JOIN Technician ON Ticket.techId = Technician.techId" UpdateCommand="UPDATE [Ticket] SET [customerId] = @customerId, [techId] = @techId, [description] = @description, [billedAmmount] = @billedAmmount WHERE [ticketId] = @ticketId">
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
        </div>
    </form>
</body>
</html>
