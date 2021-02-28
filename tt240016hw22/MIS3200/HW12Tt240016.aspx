<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="HW12Tt240016.aspx.cs" Inherits="MIS3200_HW12Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <br />
        How many rows?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRows" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRows" runat="server" ControlToValidate="txtRows" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvRows" runat="server" ControlToValidate="txtRows" Display="Dynamic" ErrorMessage="* must be a whole number from 0 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        How many columns?
        <asp:TextBox ID="txtColumns" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvColumns" runat="server" ControlToValidate="txtColumns" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvColumns" runat="server" ControlToValidate="txtColumns" Display="Dynamic" ErrorMessage="* must be a whole number from 0 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuild" runat="server" OnClick="btnBuild_Click" Text="Build a Table" />
        &nbsp;</p>
    <p>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

