<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllCoursesTt240016.aspx.cs" Inherits="MIS2800_P62_AllCoursesTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800 - Tanner Thomas</h1>
            <h2>All Courses Information</h2>
            <br />
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <asp:GridView ID="gvCourse" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="courseId" DataSourceID="dsCourse" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" Visible="False" />
                    <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="instructorId" HeaderText="instructorId" SortExpression="instructorId" Visible="False" />
                    <asp:BoundField DataField="fullName" HeaderText="Instructor Name" ReadOnly="True" SortExpression="fullName" />
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsCourse" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [courseId] = @courseId" InsertCommand="INSERT INTO [Course] ([courseName], [courseDescription], [instructorId]) VALUES (@courseName, @courseDescription, @instructorId)" SelectCommand="SELECT Course.courseId, Course.courseName, Course.courseDescription, Course.instructorId, Instructor.firstName + ' ' + Instructor.lastName AS fullName FROM Course INNER JOIN Instructor ON Course.instructorId = Instructor.instructorId" UpdateCommand="UPDATE [Course] SET [courseName] = @courseName, [courseDescription] = @courseDescription WHERE [courseId] = @courseId">
                <DeleteParameters>
                    <asp:Parameter Name="courseId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:Parameter Name="courseDescription" Type="String" />
                    <asp:Parameter Name="instructorId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:Parameter Name="courseDescription" Type="String" />
                    <asp:Parameter Name="courseId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
