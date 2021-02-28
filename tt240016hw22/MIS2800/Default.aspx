<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MIS2800_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h1>MIS2800 - Tanner Thomas</h1>
            <p>&nbsp;</p>
            <p>
                <asp:HyperLink ID="hlMyPortfolio" runat="server" NavigateUrl="~/Default.aspx">My Portfolio</asp:HyperLink>
            </p>
            <p>P 6.1</p>
            <ul>
                <li>
                    <asp:HyperLink ID="hlAllCourses" runat="server" NavigateUrl="~/MIS2800/P61/AllCoursesTt240016.aspx">All Courses</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="hlCourseDetail" runat="server" NavigateUrl="~/MIS2800/P61/CourseDetailTt240016.aspx">Course Detail</asp:HyperLink>
                </li>
            </ul>
            <br />HW6<br />
            <br /><a href="HW6/Default.aspx">Default Page</a><br />
            <br />
            <br />P6.2<br />
            <br />
            <a href="P62/AllCoursesTt240016.aspx">All Courses</a><br />
            <a href="P62/CourseDetailTt240016.aspx">Course Detail</a><br />
            <a href="P62/CourseDetailWithLookupTt240016.aspx">Course Detail with Lookup</a><br />
            <a href="P62/CourseDetailWithSelectionTt240016.aspx">Course Detail with Selection</a><br />
            <a href="P62/StudentListWithDetailTt240016.aspx">Student List with Detail</a><br />
            <a href="P62/StudentDetailWithGradesTt240016.aspx">Student Detail with Grades</a><br />
            <br />
            IC6.2<br />
            <br />
            <a href="IC62/Default.aspx">Default Page</a><br />
            <a href="IC62/droplist.aspx">Drop Down with Grid View</a><br />
            <br />
            Homework 6.2<br />
            <br />
            <a href="HW62/GridView.aspx">Grid View</a><br />
            <a href="HW62/DetailView.aspx">Detail View</a><br />
            <a href="HW62/Lookup.aspx">Lookup</a><br />
            <a href="HW62/Dropdown.aspx">Drop Down</a><br />
            <a href="Default.aspx">Detailed Grid</a><br />
            <a href="HW62/ComplicatedGridView.aspx">Drop Down Detail Grid</a><br />
            <br />
            <br />
            Exam 3<br />
            <br />
            <a href="Exam%203/Default.aspx">Default</a><br />
            <br />
        </div>
    </form>
</body>
</html>
