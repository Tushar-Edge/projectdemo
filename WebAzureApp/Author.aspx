<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="WebAzureApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="AId" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="AId" HeaderText="AId" ReadOnly="True" SortExpression="AId" />
        <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksdbConnectionString %>" DeleteCommand="DELETE FROM [Author] WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName" InsertCommand="INSERT INTO [Author] ([AId], [AuthorName]) VALUES (@AId, @AuthorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [AuthorName] = @AuthorName WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName">
    <DeleteParameters>
        <asp:Parameter Name="original_AId" Type="Int32" />
        <asp:Parameter Name="original_AuthorName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="AId" Type="Int32" />
        <asp:Parameter Name="AuthorName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="AuthorName" Type="String" />
        <asp:Parameter Name="original_AId" Type="Int32" />
        <asp:Parameter Name="original_AuthorName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
