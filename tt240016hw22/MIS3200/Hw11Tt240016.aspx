<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="Hw11Tt240016.aspx.cs" Inherits="MIS3200_Hw11Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Homework 1.1<br />
    </p>
    <p>
        Value A:
        <asp:TextBox ID="txtValueA" runat="server"></asp:TextBox>
    </p>
    <p>
        Value B:
        <asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add A to B (A+B) =" />
        <asp:Label ID="lblAdd" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract B from A (A-B) =" OnClick="btnSubtract_Click" />
        <asp:Label ID="lblSubtract" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply A by B (A x B) =" OnClick="btnMultiply_Click" />
        <asp:Label ID="lblMultiply" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnDivide" runat="server" Text="Divide A by B (A / B) =" OnClick="btnDivide_Click" />
        <asp:Label ID="lblDivide" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="btnCompCalc" runat="server" Text="Complete All Calculations" OnClick="btnCompCalc_Click" />
    </p>
    <p>
        <asp:Button ID="btnClearValue" runat="server" Text="Clear All Values" OnClick="btnClearValue_Click" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

