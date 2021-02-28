<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="IC21.aspx.cs" Inherits="MIS3200_IC21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DropDownList ID="ddlInstructors" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsAllInstructors" DataTextField="fullName" DataValueField="instructorId" OnSelectedIndexChanged="ddlInstructors_SelectedIndexChanged">
            <asp:ListItem Value="Please select an instructor.">Please select an instructor.</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
    </p>
    <br />
    <br />
    <asp:Panel ID="pnlInstructorData" runat="server">
        Instructor Name:
        <asp:Label ID="lblInstructorName" runat="server"></asp:Label>
        <br />
        Office Phone Number:
        <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
        <br />
        Email Address:
        <asp:Label ID="lblEmail" runat="server"></asp:Label>
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="dsUnused" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT firstName, lastName, officePhoneNumber, email, instructorId FROM Instructor WHERE (instructorId = @instructorId)">
        <SelectParameters>
            <asp:Parameter Name="instructorId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <p>
        <asp:SqlDataSource ID="dsAllInstructors" runat="server" ConnectionString="<%$ ConnectionStrings:portfolio_tt240016_p21ConnectionString %>" SelectCommand="SELECT instructorId, lastName + ', ' + firstName AS fullName FROM Instructor ORDER BY fullName"></asp:SqlDataSource>
    </p>
</asp:Content>

