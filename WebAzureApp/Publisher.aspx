<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="WebAzureApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Publisher details</h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Pid" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksdbConnectionString %>" DeleteCommand="DELETE FROM [Publisher] WHERE [Pid] = @original_Pid AND [PublisherName] = @original_PublisherName" InsertCommand="INSERT INTO [Publisher] ([Pid], [PublisherName]) VALUES (@Pid, @PublisherName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [PublisherName] = @PublisherName WHERE [Pid] = @original_Pid AND [PublisherName] = @original_PublisherName">
    <DeleteParameters>
        <asp:Parameter Name="original_Pid" Type="Int32" />
        <asp:Parameter Name="original_PublisherName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Pid" Type="Int32" />
        <asp:Parameter Name="PublisherName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PublisherName" Type="String" />
        <asp:Parameter Name="original_Pid" Type="Int32" />
        <asp:Parameter Name="original_PublisherName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    </main>
</asp:Content>
