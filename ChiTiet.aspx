<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="TrangTinTucDonGian.ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-right: 157px;
        }
        .auto-style8 {
            margin-right: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:DataList ID="dlTenDanhMuc" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                &nbsp;<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblCategory] WHERE ([category_ID] = @category_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category_ID" QueryStringField="categoryid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblTenDanhMuc" runat="server"></asp:Label>
    </h1>
    <div id="ndcontent">

        <asp:DataList ID="DataList1" runat="server" DataKeyField="news_ID" DataSourceID="SqlDataSource1" CssClass="auto-style8">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("title") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="357px" ImageUrl='<%# Eval("picture", "picture/{0}") %>' Width="584px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngày đăng:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượt xem:
                <asp:Label ID="viewsLabel" runat="server" Text='<%# Eval("views") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                <br />
                &nbsp;<asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tác giả:
                <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>' />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT * FROM [tblNews] as n  join [tblUser] as u on n.author_ID = u.user_id WHERE ([news_ID] = @news_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="news_ID" QueryStringField="news_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/Themes/images/icon_face.png" AlternateText="Chia sẻ lên Facebook" />
        &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Width="32px" AlternateText="Lưu bài viết" CssClass="auto-style7" ImageUrl="~/Themes/images/save_icon.jpg" Height="30px" />
        <br />   
        <h3 style="color: blue"> &nbsp;</h3>
        &nbsp;<br/>
        <h3 style="color: blue">Xem thêm các bản tin khác: </h3>
        <ul>
            <asp:Repeater ID="rpRandom" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <li>
                        <a href="ChiTiet.aspx?categoryid=<%# Eval("category_ID") %>&news_ID=<%# Eval("news_ID") %>"><%# Eval("title")%> </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="select top 5 * from tblNews 
order by NEWID()"></asp:SqlDataSource>
        </ul>
    </div>
</asp:Content>
