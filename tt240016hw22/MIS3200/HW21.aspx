<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="HW21.aspx.cs" Inherits="MIS3200_HW21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 173px;
            text-decoration: underline;
        }
        .auto-style4 {
            width: 173px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 247px;
        }
        .auto-style7 {
            height: 26px;
            width: 247px;
        }
        .auto-style8 {
            width: 36px;
        }
        .auto-style9 {
            height: 26px;
            width: 36px;
        }
        .auto-style10 {
            width: 177px;
        }
        .auto-style11 {
            height: 26px;
            width: 177px;
        }
        .auto-style12 {
            width: 177px;
            text-decoration: underline;
        }
        .auto-style13 {
            width: 227px;
        }
        .auto-style14 {
            height: 26px;
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Student:
        <asp:DropDownList ID="ddlStudent" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsStudent" DataTextField="fullName" DataValueField="studentId" OnSelectedIndexChanged="ddlStudent_SelectedIndexChanged">
            <asp:ListItem Value="0">- Choose a Student -</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Course:
        <asp:DropDownList ID="ddlCourse" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsCourse" DataTextField="courseName" DataValueField="courseId" Enabled="False" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
            <asp:ListItem>Please select a course!</asp:ListItem>
        </asp:DropDownList>
        <br />
    </p>
    <asp:Panel ID="pnlDetails" runat="server" Visible="False">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>Student Details</strong></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style12"><strong>Course Details</strong></td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Full Name:</td>
                <td class="auto-style6">
                    <asp:Label ID="lblFullName" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">Course Number:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblCourseNumber" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style11">Course Name:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblCourseName" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">Email:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblStudentEmail" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style11">Instructor:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblInstructor" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton ID="lbInstructor" runat="server" OnClick="lbInstructor_Click"></asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:Panel ID="pnlInstructor" runat="server">
                        Phone:
                        <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
                        <br />
                        Email:
                        <asp:Label ID="lblInstructorEmail" runat="server"></asp:Label>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <strong>Letter Grade</strong>:
        <asp:Label ID="lblGrade" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsStudent" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT DISTINCT Student.studentId, Student.lastName + ', ' + Student.firstName AS FullName FROM Schedule INNER JOIN Student ON Schedule.studentId = Student.studentId ORDER BY FullName"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="dsCourse" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT Schedule.courseId, Course.courseName FROM Schedule INNER JOIN Course ON Schedule.courseId = Course.courseId WHERE (Schedule.studentId = @studentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlStudent" Name="studentId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

