<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetailWithSelectionTt240016.aspx.cs" Inherits="MIS2800_P62_CourseDetailWithSelectionTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS 2800 - Tanner Thomas</h1>
            <h2>Course Detail with Selection</h2>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <br />
            Select a course name:
            <asp:DropDownList ID="ddlCourseName" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsCourseName" DataTextField="courseName" DataValueField="courseId">
                <asp:ListItem Value="0">Select a course</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="courseId" DataSourceID="dsCourseDetail" ForeColor="#333333" GridLines="None" Height="54px" Width="487px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" Visible="False" />
                    <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="instructorId" HeaderText="instructorId" SortExpression="instructorId" Visible="False" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" Visible="False" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" Visible="False" />
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
            <asp:SqlDataSource ID="dsCourseName" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT [courseId], [courseName] FROM [Course]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="dsCourseDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p62ConnectionString %>" SelectCommand="SELECT
Course.courseId, Course.courseName, Course.courseDescription,
Course.instructorId, Instructor.firstName, Instructor.lastName,
Instructor.firstName + ' ' + Instructor.lastName AS fullName
FROM Course INNER JOIN Instructor ON Course.instructorId = Instructor.instructorId
WHERE Course.courseID=@courseId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCourseName" Name="courseId" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
