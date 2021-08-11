<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMuc.aspx.cs" Inherits="TrangTinTucDonGian.QuanLyDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>QUẢN LÝ > QUẢN LÝ DANH MỤC</h1>
         <div>
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
    <br />
    Mã danh mục
    <asp:TextBox ID="txtCategory_ID" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox>
    <br />
    Tên danh mục
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="68px" />
    &nbsp;
    <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style20" OnClick="btnUpdate_Click" Text="Update" Width="80px" />
    <asp:Button ID="btnDelete" runat="server" CssClass="auto-style21" OnClick="btnDelete_Click" Text="Delete" style="margin-left: 22px" />
    <br />
    <asp:GridView ID="gvDanhMuc" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvDanhMuc_SelectedIndexChanged" OnRowDeleting="gvDanhMuc_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:BoundField DataField="category_ID" HeaderText="category_ID" ReadOnly="True" SortExpression="category_ID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
</div>
</asp:Content>
