<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="MIS2800_HW6_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HW 6.1 - Details</h1>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="customerId" DataSourceID="dsticketingDetails" Height="48px" Width="496px">
                <Fields>
                    <asp:BoundField DataField="customerId" HeaderText="customerId" ReadOnly="True" SortExpression="customerId" Visible="False" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                    <asp:BoundField DataField="streetAddress" HeaderText="streetAddress" SortExpression="streetAddress" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                </Fields>
            </asp:DetailsView>
            <br />
            <a href="Default.aspx">Go Back</a><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsticketingDetails" runat="server" ConnectionString="<%$ ConnectionStrings:tt240016ticketingConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
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
