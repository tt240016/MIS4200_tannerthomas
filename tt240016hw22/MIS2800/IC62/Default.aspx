<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MIS2800_IC62_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>GridView - Tanner Thomas</h1>
            <a href="../Default.aspx">Go Back Home</a><br />
            <br />
            <asp:GridView ID="gvStuff" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stuffID" DataSourceID="dsStuff">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="stuffID" HeaderText="stuffID" InsertVisible="False" ReadOnly="True" SortExpression="stuffID" Visible="False" />
                    <asp:BoundField DataField="inventorID" HeaderText="inventorID" SortExpression="inventorID" Visible="False" />
                    <asp:BoundField DataField="stuffName" HeaderText="Stuff Name" SortExpression="stuffName" />
                    <asp:BoundField DataField="stuffDescription" HeaderText="Description" SortExpression="stuffDescription" />
                    <asp:BoundField DataField="threshold" HeaderText="threshold" SortExpression="threshold" />
                    <asp:TemplateField HeaderText="Name" SortExpression="fullName">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlInventor" runat="server" DataSourceID="inventorDS" DataTextField="Name" DataValueField="inventorID" SelectedValue='<%# Bind("inventorID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="inventorDS" runat="server" ConnectionString="<%$ ConnectionStrings:crowdfundingtt240016ConnectionString %>" SelectCommand="SELECT [inventorID], [fName] + ' ' + [lName] AS Name FROM [Inventor]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("fullName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="dsStuff" runat="server" ConnectionString="<%$ ConnectionStrings:crowdfundingtt240016ConnectionString %>" DeleteCommand="DELETE FROM [GeekyStuff] WHERE [stuffID] = @stuffID" InsertCommand="INSERT INTO [GeekyStuff] ([inventorID], [stuffName], [stuffDescription], [threshold]) VALUES (@inventorID, @stuffName, @stuffDescription, @threshold)" SelectCommand="SELECT GeekyStuff.stuffID, GeekyStuff.inventorID, GeekyStuff.stuffName, GeekyStuff.stuffDescription, GeekyStuff.threshold, Inventor.fName+ ' ' + Inventor.lName AS fullName FROM GeekyStuff INNER JOIN Inventor ON GeekyStuff.inventorID = Inventor.inventorID" UpdateCommand="UPDATE [GeekyStuff] SET [inventorID] = @inventorID, [stuffName] = @stuffName, [stuffDescription] = @stuffDescription, [threshold] = @threshold WHERE [stuffID] = @stuffID">
                <DeleteParameters>
                    <asp:Parameter Name="stuffID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="inventorID" Type="Int32" />
                    <asp:Parameter Name="stuffName" Type="String" />
                    <asp:Parameter Name="stuffDescription" Type="String" />
                    <asp:Parameter Name="threshold" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="inventorID" Type="Int32" />
                    <asp:Parameter Name="stuffName" Type="String" />
                    <asp:Parameter Name="stuffDescription" Type="String" />
                    <asp:Parameter Name="threshold" Type="Int32" />
                    <asp:Parameter Name="stuffID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
