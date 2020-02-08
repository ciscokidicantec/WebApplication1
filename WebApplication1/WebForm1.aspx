<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Estate Properties 08-02-2020</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:estate08022020ConnectionString %>" ProviderName="<%$ ConnectionStrings:estate08022020ConnectionString.ProviderName %>" SelectCommand="SELECT * from ESTATE"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="estateid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="estateid" HeaderText="estateid" ReadOnly="True" SortExpression="estateid" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
