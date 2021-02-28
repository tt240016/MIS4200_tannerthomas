<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="P21Tt240016.aspx.cs" Inherits="MIS3200_P21Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        Display which information:</p>
    <p>
        <asp:RadioButtonList ID="rblWhichAttribute" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblWhichAttribute_SelectedIndexChanged">
            <asp:ListItem Value="1">Name</asp:ListItem>
            <asp:ListItem Value="2">Name and Address</asp:ListItem>
            <asp:ListItem Selected="True" Value="3">Everything</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <asp:DropDownList ID="ddlStudentList" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsStudentList" DataTextField="studentFullName" DataValueField="studentId" OnSelectedIndexChanged="ddlStudentList_SelectedIndexChanged">
            <asp:ListItem Value="0">Please select a student...</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
    <p>
        <asp:DetailsView ID="dvStudentDetail" runat="server" AutoGenerateRows="False" DataKeyNames="studentId" DataSourceID="dsStudentDetail" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="studentId" HeaderText="studentId" InsertVisible="False" ReadOnly="True" SortExpression="studentId" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        <asp:Label ID="lblStudentDataFromDatabase" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsStudentList" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT studentId, lastName + ', ' + firstName AS studentFullName FROM Student ORDER BY studentFullName"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="dsStudentDetail" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT * FROM [Student] WHERE ([studentId] = @studentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlStudentList" Name="studentId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

