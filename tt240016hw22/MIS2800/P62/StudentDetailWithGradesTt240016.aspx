<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentDetailWithGradesTt240016.aspx.cs" Inherits="MIS2800_P62_StudentDetailWithGradesTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800</h1>
            <h2>Student Detail with Grades</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <br />
            <asp:DropDownList ID="ddlGrades" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsStudentList" DataTextField="fullName" DataValueField="studentId">
                <asp:ListItem Value="0">Select a student</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DetailsView ID="dvGrades" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="studentId" DataSourceID="dsGradesDetail" ForeColor="#333333" GridLines="None" Height="50px" Width="266px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="studentId" HeaderText="Student ID" ReadOnly="True" SortExpression="studentId" />
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
            <br />
            <asp:GridView ID="gvGrades" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsStudentGrade" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
                    <asp:BoundField DataField="letterGrade" HeaderText="Grade" SortExpression="letterGrade" />
                    <asp:BoundField DataField="studentId" HeaderText="studentId" SortExpression="studentId" Visible="False" />
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
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsStudentList" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT studentId, firstName + ' ' + lastName AS fullName FROM Student"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="dsGradesDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT * FROM Student WHERE studentId=@studentId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlGrades" Name="studentId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="dsStudentGrade" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT Grade.letterGrade, Course.courseName, Grade.studentId FROM Grade INNER JOIN Course ON Grade.courseId = Course.courseId WHERE Grade.studentId=@studentId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlGrades" Name="studentId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
