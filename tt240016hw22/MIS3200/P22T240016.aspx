<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="P22T240016.aspx.cs" Inherits="MIS3200_P22T240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="gvStudentInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="studentId" DataSourceID="dsAllStudentData" OnSelectedIndexChanged="gvStudentInfo_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="studentId" HeaderText="studentId" InsertVisible="False" ReadOnly="True" SortExpression="studentId" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="btnDisplayTable" runat="server" OnClick="Button1_Click" Text="Display a Table of Data" />
        <asp:Button ID="btnReset" runat="server" OnClick="Button2_Click" Text="Reset" Visible="False" />
    </p>
    <p>
        <asp:Label ID="lblOptions" runat="server" Text="Display the following information:" Visible="False">

        </asp:Label> <asp:RadioButtonList ID="rblWhichAttribute" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblWhichAttribute_SelectedIndexChanged" RepeatDirection="Horizontal" Visible="False">
            <asp:ListItem Value="1">Name</asp:ListItem>
            <asp:ListItem Value="2">Name and address</asp:ListItem>
            <asp:ListItem Selected="True" Value="3">Everything</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <asp:Label ID="lblTableData" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllStudentData" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p22ConnectionString %>" SelectCommand="SELECT TOP 2 * FROM Student ORDER BY lastName, firstName"></asp:SqlDataSource>
    </p>
</asp:Content>

