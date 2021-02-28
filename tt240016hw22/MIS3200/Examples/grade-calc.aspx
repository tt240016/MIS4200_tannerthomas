<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grade-calc.aspx.cs" Inherits="MIS3200_examples_grade_calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Grade Calculator Example</h1>
    <table>
        <tr>
            <td>Preps (15%):</td>
            <td>
                <asp:TextBox ID="txtPreps" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPreps" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtPreps"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rv" runat="server" Display="Dynamic" ErrorMessage="* must be between 0 and 100" ForeColor="Red" Type="Double" ControlToValidate="txtPreps" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>In-Class (5%):</td>
            <td>
                <asp:TextBox ID="txtInClass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvInClass" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtInClass"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvInClass" runat="server" Display="Dynamic" ErrorMessage="* must be between 0 and 100" ForeColor="Red" Type="Double" ControlToValidate="txtInClass" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Homework (20%):</td>
            <td>
                <asp:TextBox ID="txtHomework" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvHomework" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtHomework"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvHomework" runat="server" Display="Dynamic" ErrorMessage="* must be between 0 and 100" ForeColor="Red" Type="Double" ControlToValidate="txtHomework" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Exams (45%):</td>
            <td>
                <asp:TextBox ID="txtExams" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvExams" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtExams"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvExams" runat="server" Display="Dynamic" ErrorMessage="* must be between 0 and 100" ForeColor="Red" Type="Double" ControlToValidate="txtExams" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Final Project (15%):</td>
            <td>
                <asp:TextBox ID="txtFinalProject" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFinalProject" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtFinalProject"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvFinalProject" runat="server" Display="Dynamic" ErrorMessage="* must be between 0 and 100" ForeColor="Red" Type="Double" ControlToValidate="txtFinalProject" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="btnCalculateGrade" runat="server" OnClick="btnCalculateGrade_Click" Text="Calculate Grade" />
    </p>
    <p>
        <asp:Label ID="lblGradeReport" runat="server"></asp:Label>
    </p>
        </div>
    </form>
</body>
</html>
