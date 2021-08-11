<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QuanLy.aspx.cs" Inherits="TrangTinTucDonGian.Admin.QuanLy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>QUẢN LÝ</h1>
    <div id="ndcontent">
        <table>
            <tr>
                <td><a href="QuanLyBaiViet.aspx">Quản lý bài viết</a></td>
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
        </div>
</asp:Content>
