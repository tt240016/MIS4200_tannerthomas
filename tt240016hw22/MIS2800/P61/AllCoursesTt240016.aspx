<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllCoursesTt240016.aspx.cs" Inherits="MIS2800_P61_AllCoursesTt240016" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MIS2800 - Tanner Thomas</h1>
            <h3>All Course Information</h3>
            <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/MIS2800/Default.aspx">Go Back Home</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="gvCourseInfo" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="courseId" DataSourceID="dsCourseInfo" style="margin-top: 0px">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" Visible="False" />
                    <asp:BoundField DataField="courseName" HeaderText="Course" SortExpression="courseName" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="instructorId" HeaderText="instructorId" SortExpression="instructorId" Visible="False" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsCourseInfo" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016p61ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [courseId] = @courseId" InsertCommand="INSERT INTO [Course] ([courseName], [courseDescription], [instructorId]) VALUES (@courseName, @courseDescription, @instructorId)" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [courseName] = @courseName, [courseDescription] = @courseDescription WHERE [courseId] = @courseId">
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
                    <asp:Parameter Name="instructorId" Type="Int32" />
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
