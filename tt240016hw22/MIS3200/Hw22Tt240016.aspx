<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="Hw22Tt240016.aspx.cs" Inherits="MIS3200_Hw22Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DropDownList ID="ddlProducts" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsProducts" DataTextField="productName" DataValueField="productId" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
            <asp:ListItem>- Choose a product -</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:CheckBox ID="cbCustomerDetails" runat="server" OnCheckedChanged="cbCustomerDetails_CheckedChanged" Text="Show Customer Details!" Visible="False" />
    </p>
    <asp:Panel ID="pnlOrder" runat="server">
        <asp:Label ID="lblDetails" runat="server" Text="Label" Visible="False"></asp:Label>
    </asp:Panel>
    <p>
        <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016spicesuppliesConnectionString %>" SelectCommand="SELECT [productId], [productName] FROM [Product]"></asp:SqlDataSource>
    </p>
</asp:Content>

