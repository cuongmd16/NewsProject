<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="TrangTinTucDonGian.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 22px;
        }
    .auto-style8 {
        margin-left: 18px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Tin mới nhất</h1>
    <div id="ndcontent">
        &nbsp;&nbsp;
        Tìm kiếm
        <asp:TextBox ID="txtSearch2" runat="server" OnTextChanged="txtSearch2_TextChanged" CssClass="auto-style8"></asp:TextBox>
        <br />
        <br />
        &nbsp;Danh mục<asp:DropDownList ID="ddlDanhMuc" runat="server" AutoPostBack="True" CssClass="auto-style7" OnSelectedIndexChanged="ddlDanhMuc_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Repeater ID="rpNews" runat="server">
            <ItemTemplate>
                <ul>
                    <li>
                        <a href="ChiTiet.aspx?categoryid=<%# Eval("category_ID") %>&id=<%# Eval("news_ID") %>"><%# Eval("title")%> </a>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
        <h3>Đã tìm thấy <asp:Label runat="server" ID="lblNumber"></asp:Label> &nbsp;bản tin</h3>
    </div>
</asp:Content>
