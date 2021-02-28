<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridDetailFlight.aspx.cs" Inherits="MIS2800_Exam_3_GridDetailFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Grid Detail Flight - Tanner Thomas</h1>
            <p>
                &nbsp;</p>
            <a href="../Default.aspx">Back</a><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="pilotId" DataSourceID="dsGridView" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="pilotId" HeaderText="pilotId" ReadOnly="True" SortExpression="pilotId" Visible="False" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:BoundField DataField="flightHours" HeaderText="Flight Hours" SortExpression="flightHours" />
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
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="dsDetailView" GridLines="Horizontal" Height="50px" Width="523px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="flightId" HeaderText="Flight Id" SortExpression="flightId" />
                    <asp:BoundField DataField="pilotId" HeaderText="Pilot Id" SortExpression="pilotId" />
                    <asp:BoundField DataField="origin" HeaderText="Origin" SortExpression="origin" />
                    <asp:BoundField DataField="destination" HeaderText="Destination" SortExpression="destination" />
                    <asp:BoundField DataField="vesselId" HeaderText="vesselId" SortExpression="vesselId" Visible="False" />
                    <asp:BoundField DataField="flightDeparture" HeaderText="Flight Departure" SortExpression="flightDeparture" />
                    <asp:BoundField DataField="flightArrival" HeaderText="Flight Arrival" SortExpression="flightArrival" />
                    <asp:TemplateField HeaderText="Vessel" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsDropDown" DataTextField="Name" DataValueField="vesselId">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
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
            <asp:SqlDataSource ID="dsDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016e3flightConnectionString %>" SelectCommand="SELECT vesselId, vesseMake + ' ' + vesselModel AS Name FROM Vessel"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsGridView" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016e3flightConnectionString %>" SelectCommand="SELECT pilotId, firstName, lastName, flightHours FROM Pilot"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="dsDetailView" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016e3flightConnectionString %>" DeleteCommand="DELETE FROM [Flight] WHERE [flightId] = @flightId" InsertCommand="INSERT INTO [Flight] ([flightId], [origin], [destination], [vesselId], [flightDeparture], [flightArrival]) VALUES (@flightId, @origin, @destination, @vesselId, @flightDeparture, @flightArrival)" SelectCommand="SELECT Flight.flightId, Flight.origin, Flight.destination, Flight.vesselId, Flight.flightDeparture, Flight.flightArrival, Pilot.pilotId, Vessel.vesseMake + ' ' + Vessel.vesselModel AS Name FROM Flight INNER JOIN Vessel ON Flight.vesselId = Vessel.vesselId CROSS JOIN Pilot WHERE (Pilot.pilotId = @pilotID)" UpdateCommand="UPDATE [Flight] SET [origin] = @origin, [destination] = @destination, [vesselId] = @vesselId, [flightDeparture] = @flightDeparture, [flightArrival] = @flightArrival, [flightId] = @flightId, [pilotId] = @pilotId WHERE [flightId] = @flightId">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="pilotID" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="origin" Type="String" />
                    <asp:Parameter Name="destination" Type="String" />
                    <asp:Parameter Name="vesselId" Type="Int32" />
                    <asp:Parameter Name="flightDeparture" Type="DateTime" />
                    <asp:Parameter Name="flightArrival" Type="DateTime" />
                    <asp:Parameter Name="flightId" Type="String" />
                    <asp:Parameter Name="pilotId" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
