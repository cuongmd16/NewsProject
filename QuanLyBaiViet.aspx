<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QuanLyBaiViet.aspx.cs" Inherits="TrangTinTucDonGian.Admin.QuanLyBaiViet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 31px;
        }
        .auto-style8 {
            margin-left: 33px;
        }
        .auto-style9 {
            margin-left: 21px;
        }
        .auto-style10 {
            margin-left: 106px;
        }
        .auto-style11 {
            margin-left: 46px;
        }
        .auto-style12 {
            height: 22px;
        }
        .auto-style13 {
            margin-left: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>QUẢN LÝ > QUẢN LÝ BÀI VIẾT</h1>
    <div>
        <table>
            <tr>
                <td class="auto-style12"><a href="QuanLyBaiViet.aspx">Quản lý bài viết</a></td>
            </tr>
            <tr>
                <td><a href="QuanLyUser.aspx">Quản lý User</a></td>
            </tr>
            <tr>
                <td><a href="QuanLyMod.aspx">Quản lý Mod</a></td>
            </tr>
            <tr>
                <td><a href="QuanLyDanhMuc.aspx">Quản lý Danh mục</a></td>
            </tr>
        </table>
        Lọc theo<asp:DropDownList ID="ddlCateSearch" runat="server" AutoPostBack="True" CssClass="auto-style13" OnSelectedIndexChanged="ddlCateSearch_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="news_ID"></asp:Label>
            <asp:TextBox ID="txtCode" runat="server" ReadOnly="True" Width="84px" CssClass="auto-style8" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="ddlCategory" runat="server" Width="176px" CssClass="auto-style7">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Author ID"></asp:Label>
            &nbsp;<asp:TextBox ID="txtAuthorID" runat="server" ReadOnly="True" Width="80px" CssClass="auto-style9" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Title: "></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style21" Width="420px" Height="16px" style="margin-left: 55px" TextMode="MultiLine"></asp:TextBox>
            <br />
            Body:&nbsp;<asp:TextBox ID="txtBody" runat="server" Height="335px" Width="545px" CssClass="auto-style10" TextMode="MultiLine"></asp:TextBox>
            <br />
            &nbsp;
            <br />
            <asp:Label ID="Label5" runat="server" Text="Date: "></asp:Label>
            &nbsp;<asp:TextBox ID="txtDate" runat="server" Width="187px" CssClass="auto-style11" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" style="margin-left: 53px" Text="Update" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" style="margin-left: 71px" Text="Delete" />
        <br />
        <br />
        <br />
        <asp:GridView ID="gvNews" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableModelValidation="True" Height="93px" OnRowCancelingEdit="gvNews_RowCancelingEdit" OnRowDeleting="gvNews_RowDeleting" OnRowEditing="gvNews_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="gvNews_PageIndexChanging" Width="695px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="news_ID" HeaderText="news_ID" SortExpression="news_ID" />
                <asp:BoundField DataField="category_ID" HeaderText="category_ID" SortExpression="category_ID" />
                <asp:BoundField DataField="author_ID" HeaderText="author_ID" SortExpression="author_ID" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
                <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" Visible="False" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        </div>
</asp:Content>
