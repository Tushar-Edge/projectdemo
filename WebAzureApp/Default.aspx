<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAzureApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Books</h1>
           
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
            <asp:GridView ID="GvBooks" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="BookId" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" SortExpression="BookId" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                    <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
                    <asp:BoundField DataField="BookCateogory" HeaderText="BookCateogory" SortExpression="BookCateogory" />
                    <asp:BoundField DataField="BookPublisher" HeaderText="BookPublisher" SortExpression="BookPublisher" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />

            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:booksdbConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookCateogory] = @original_BookCateogory) OR ([BookCateogory] IS NULL AND @original_BookCateogory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))" InsertCommand="INSERT INTO [Book] ([BookId], [BookName], [BookPrice], [BookAuthor], [BookCateogory], [BookPublisher]) VALUES (@BookId, @BookName, @BookPrice, @BookAuthor, @BookCateogory, @BookPublisher)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:booksdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [BookPrice] = @BookPrice, [BookAuthor] = @BookAuthor, [BookCateogory] = @BookCateogory, [BookPublisher] = @BookPublisher WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookCateogory] = @original_BookCateogory) OR ([BookCateogory] IS NULL AND @original_BookCateogory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuthor" Type="Int32" />
                        <asp:Parameter Name="original_BookCateogory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookId" Type="Int32" />
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuthor" Type="Int32" />
                        <asp:Parameter Name="BookCateogory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuthor" Type="Int32" />
                        <asp:Parameter Name="BookCateogory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuthor" Type="Int32" />
                        <asp:Parameter Name="original_BookCateogory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </section>
        </div>
    </main>

</asp:Content>
