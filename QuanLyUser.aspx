<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QuanLyUser.aspx.cs" Inherits="TrangTinTucDonGian.Admin.QuanLyUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 6px;
        }
        .auto-style8 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>QUẢN LÝ > QUẢN LÝ USER</h1>
    <div>
        <table>
            <tr>
                <td class="auto-style8"><a href="QuanLyBaiViet.aspx">Quản lý bài viết</a></td>
            </tr>
            <tr>
                <td><a href="QuanLyUser.aspx">Quản lý User</a></td>
            </tr>
            <tr>
                <td class="auto-style8"><a href="QuanLyMod.aspx">Quản lý Mod</a></td>
            </tr>
            <tr>
                <td><a href="QuanLyDanhMuc.aspx">Quản lý Danh mục</a></td>
            </tr>
        </table>
        <br />
        user_ID<asp:TextBox ID="txtUserID" runat="server" CssClass="auto-style22" ReadOnly="True" Style="margin-left: 24px" Width="146px"></asp:TextBox>
        <br />
        username
        <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style7" Height="19px" ReadOnly="True" Width="154px"></asp:TextBox>
        <br />
        power&nbsp;<asp:TextBox ID="txtPower" runat="server" CssClass="auto-style21" ReadOnly="True" Style="margin-left: 34px" Width="153px"></asp:TextBox>
        <br />
        fullname
        <asp:TextBox ID="txtFullname" runat="server" CssClass="auto-style23" ReadOnly="True" Style="margin-left: 13px" Width="154px"></asp:TextBox>
        <br />
        address&nbsp;<asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style22" ReadOnly="True" Style="margin-left: 21px" Width="146px"></asp:TextBox>
        <br />
        email&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style24" ReadOnly="True" Style="margin-left: 39px" Width="144px"></asp:TextBox>
        <br />
        phone
        <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style25" ReadOnly="True" Style="margin-left: 36px" Width="142px"></asp:TextBox>
        &nbsp;<br />
        <asp:GridView ID="gvUser" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableModelValidation="True" OnPageIndexChanging="gvUser_PageIndexChanging" OnRowDeleting="gvUser_RowDeleting" OnSelectedIndexChanged="gvUser_SelectedIndexChanged" Width="12px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="user_ID" HeaderText="user_ID" SortExpression="user_ID" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="power" HeaderText="power" SortExpression="power" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
