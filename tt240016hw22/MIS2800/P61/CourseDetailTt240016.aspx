<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetailTt240016.aspx.cs" Inherits="MIS2800_P61_CourseDetailTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS2800 - Tanner Thomas</h1>
            <p>&nbsp;</p>
            <h3>All Course Information</h3>
            <p>&nbsp;</p>
            <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/MIS2800/Default.aspx">Go Back Home</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:DetailsView ID="dvCourseDetail" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="courseId" DataSourceID="dsCourseDetail" Height="50px" style="margin-right: 0px" Width="990px">
                <Fields>
                    <asp:BoundField DataField="courseId" HeaderText="Course ID" InsertVisible="False" ReadOnly="True" SortExpression="courseId" />
                    <asp:BoundField DataField="courseName" HeaderText="Course" SortExpression="courseName" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="instructorId" HeaderText="Instructor ID" SortExpression="instructorId" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsCourseDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p61ConnectionString %>" 
                SelectCommand="SELECT * FROM [Course] ORDER BY [courseName]">
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
