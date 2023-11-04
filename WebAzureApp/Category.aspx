<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebAzureApp.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        Category details
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CatId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="588px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" SortExpression="CatId" />
            <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksdbConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName" InsertCommand="INSERT INTO [Category] ([CatId], [CatName]) VALUES (@CatId, @CatName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName">
        <DeleteParameters>
            <asp:Parameter Name="original_CatId" Type="Int32" />
            <asp:Parameter Name="original_CatName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatId" Type="Int32" />
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CatName" Type="String" />
            <asp:Parameter Name="original_CatId" Type="Int32" />
            <asp:Parameter Name="original_CatName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
         </div>
</asp:Content>
