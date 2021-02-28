<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MIS2800_HW6_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800 - HW 6</h1>
            <br />
            <br />
            <a href="GridView.aspx">Grid View</a><br />
            <a href="Default2.aspx">Details View</a><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsticketing" runat="server" ConnectionString="Data Source=cob.ohio.edu;Initial Catalog=tt240016ticketing;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
