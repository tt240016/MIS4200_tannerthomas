<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="IC22Tt240016.aspx.cs" Inherits="MIS3200_Examples_IC22Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:DropDownList ID="ddlSuppliers" runat="server" DataSourceID="dsSuppliers" DataTextField="companyName" DataValueField="supplierId" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlSuppliers_SelectedIndexChanged">
        <asp:ListItem>- Choose a Supplier -</asp:ListItem>
    </asp:DropDownList>
    <br />
</p>
<p>
    <asp:Label ID="lblProducts" runat="server"></asp:Label>
</p>
<p>
</p>
<p>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    <asp:SqlDataSource ID="dsSuppliers" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016spicesuppliesConnectionString %>" SelectCommand="SELECT supplierId, companyName FROM Supplier ORDER BY companyName"></asp:SqlDataSource>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:portfoliott240016spicesuppliesConnectionString %>" SelectCommand="SELECT unitPrice, productName, package, isDiscontinued, supplierId FROM Product WHERE (supplierId = @supplierId)">
            <SelectParameters>
                <asp:Parameter Name="supplierId" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
</asp:Content>

