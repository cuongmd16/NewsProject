<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TrangTinTucDonGian.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tin mới nhất</h1>
    <div id="ndcontent">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="news_ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table style="width: 650px">
                <tr>
                    <td colspan="2" style="width: 98%; text-align: left">
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066CC" NavigateUrl='<%# "Chitiet.aspx?category_ID="+Eval("category_ID")+"&news_ID="+Eval("news_ID") %>'
                            Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="13pt"></asp:HyperLink></td>
                </tr>
                <tr>
                    <td style="width: 40%; text-align: center" align="center">
                        <asp:Image ID="Image1" runat="server" Height="277px" ImageUrl='<%# Eval("picture", "picture/{0}") %>'
                            Width="245px" /></td>
                    <td style="width: 60%; text-align: justify">
                        <asp:Label ID="ShortcutLabel" runat="server" Text='<%# Eval("shot") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="width: 60%; text-align: right">
                        &nbsp;<asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("date") %>' Font-Italic="True" ForeColor="#0033CC"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="width: 60%; text-align: right">
                        &nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl='<%# "Chitiet.aspx?category_ID="+Eval("category_ID")+"&news_ID="+Eval("news_ID") %>' Font-Italic="True">Chi tiết</asp:HyperLink></td>
                </tr>
            </table>
            <hr />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT * FROM [tblNews]"></asp:SqlDataSource>
    </div>
</asp:Content>
