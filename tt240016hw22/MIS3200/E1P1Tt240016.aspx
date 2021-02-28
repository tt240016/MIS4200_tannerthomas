<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="E1P1Tt240016.aspx.cs" Inherits="MIS3200_E1P1Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        Guess a number
        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvNumber" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="* Number should be a whole number between 0 to 100." ForeColor="Red" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        <asp:Button ID="btnCheck" runat="server" OnClick="btnCheck_Click" Text="Check" />
    </p>
    <p>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
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

