<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetailWithLookupTt240016.aspx.cs" Inherits="MIS2800_P62_CourseDetailWithLookupTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800 - Tanner Thomas</h1>
            <h2>Course Detail with Lookup</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <br />
            Enter a course name:
            <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Find" />
            <asp:DetailsView ID="dvCourseDetailsLookup" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="courseId" DataSourceID="dsCourseDetail" ForeColor="#333333" GridLines="None" Height="26px" Width="428px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" Visible="False" />
                    <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="instructorId" HeaderText="instructorId" SortExpression="instructorId" Visible="False" />
                    <asp:BoundField DataField="fullName" HeaderText="Instructor Name" ReadOnly="True" SortExpression="fullName" />
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
            <asp:SqlDataSource ID="dsCourseDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [courseId] = @courseId" InsertCommand="INSERT INTO [Course] ([courseName], [courseDescription], [instructorId]) VALUES (@courseName, @courseDescription, @instructorId)" SelectCommand="SELECT
Course.courseId, Course.courseName, Course.courseDescription,
Course.instructorId, Instructor.firstName, Instructor.lastName,
Instructor.firstName + ' ' + Instructor.lastName AS fullName
FROM Course INNER JOIN Instructor ON Course.instructorId = Instructor.instructorId
WHERE Course.courseName=@courseName" UpdateCommand="UPDATE [Course] SET [courseName] = @courseName, [courseDescription] = @courseDescription WHERE [courseId] = @courseId">
                <DeleteParameters>
                    <asp:Parameter Name="courseId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:Parameter Name="courseDescription" Type="String" />
                    <asp:Parameter Name="instructorId" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCourseName" Name="courseName" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:Parameter Name="courseDescription" Type="String" />
                    <asp:Parameter Name="courseId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
