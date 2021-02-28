<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentListWithDetailTt240016.aspx.cs" Inherits="MIS2800_P62_StudentListWithDetailTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800 - Tanner Thomas</h1>
            <h2>Student List with Detail</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td id="gvStudentList" class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="studentID" DataSourceID="dsStudentList" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                <asp:BoundField DataField="studentID" HeaderText="studentID" ReadOnly="True" SortExpression="studentID" Visible="False" />
                                <asp:BoundField DataField="fullName" HeaderText="Student Name" ReadOnly="True" SortExpression="fullName" />
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
                    </td>
                    <td id="dvStudentDetail">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="studentId" DataSourceID="dsStudentDetail" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="studentId" HeaderText="studentId" ReadOnly="True" SortExpression="studentId" Visible="False" />
                                <asp:BoundField DataField="firstName" HeaderText="First" SortExpression="firstName" />
                                <asp:BoundField DataField="lastName" HeaderText="Last" SortExpression="lastName" />
                                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            </Fields>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:SqlDataSource ID="dsStudentList" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT studentID, firstName + ' ' + lastName AS fullName FROM Student"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsStudentDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT * FROM [Student] WHERE ([studentId] = @studentId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="studentId" PropertyName="SelectedValue" Type="String" />
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
