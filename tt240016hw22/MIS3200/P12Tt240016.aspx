<%@ Page Title="" Language="C#" MasterPageFile="~/MIS3200/MasterPageTt240016.master" AutoEventWireup="true" CodeFile="P12Tt240016.aspx.cs" Inherits="MIS3200_P12Tt240016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:TextBox ID="txtValueA" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvValueA" runat="server" ControlToValidate="txtValueA" Display="Dynamic" ErrorMessage="Please enter a valid number" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvValueA" runat="server" ControlToValidate="txtValueA" ErrorMessage="Please enter a number" MaximumValue="999999" MinimumValue="999999" SetFocusOnError="True" Type="Double" Display="Dynamic"></asp:RangeValidator>
    </p>
    <asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvValueB" runat="server" ControlToValidate="txtValueB" Display="Dynamic" ErrorMessage="Please enter a valid number" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvValueB" runat="server" ControlToValidate="txtValueB" ErrorMessage="Please enter a number" MaximumValue="999999" MinimumValue="999999" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
    <p>
        <asp:Button ID="btnAddition" runat="server" OnClick="btnAddition_Click" Text="Do Addition" />
    </p>
    <p>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
    <asp:ValidationSummary ID="vsErrors" runat="server" ShowMessageBox="True" ShowSummary="False" />
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

