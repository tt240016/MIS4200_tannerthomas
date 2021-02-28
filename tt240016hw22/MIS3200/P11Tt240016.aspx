<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="P11Tt240016.aspx.cs" Inherits="MIS3200_P11Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong>Prep 1.1</strong></p>
    <p>
    <br />
    <asp:TextBox ID="txtValueA" runat="server"></asp:TextBox>
&nbsp;+
        <asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
&nbsp;=
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
<asp:Button ID="btnDoAddition" runat="server" OnClick="btnDoAddition_Click" Text="Do Addition!" />
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

