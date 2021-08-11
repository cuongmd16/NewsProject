<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QuanLyMod.aspx.cs" Inherits="TrangTinTucDonGian.QuanLyMod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>QUẢN LÝ > QUẢN LÝ MOD</h1>
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
    <br/>
    user_ID<asp:TextBox ID="txtUserID" runat="server" CssClass="auto-style22" ReadOnly="True" style="margin-left: 22px" Width="146px"></asp:TextBox>
    <br />
    username
    <asp:TextBox ID="txtUsername" runat="server" Height="19px" Width="154px"></asp:TextBox>
    <br />
    power&nbsp;<asp:TextBox ID="txtPower" runat="server" CssClass="auto-style21" style="margin-left: 34px" Width="153px"></asp:TextBox>
    &nbsp;<br />
    fullname
    <asp:TextBox ID="txtFullname" runat="server" CssClass="auto-style23" style="margin-left: 15px" Width="154px"></asp:TextBox>
    <br />
    address&nbsp;<asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style22" style="margin-left: 21px" Width="146px"></asp:TextBox>
    <br />
    email&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style24" style="margin-left: 42px" Width="144px"></asp:TextBox>
    <br />
    phone
    <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style25" style="margin-left: 35px" Width="142px"></asp:TextBox>
    &nbsp;<br />
    <br />
    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="91px" />
    <asp:Button ID="btnUp" runat="server" CssClass="auto-style28" OnClick="btnUp_Click" style="margin-left: 92px" Text="Up to Admin" Width="139px" />
    <asp:Button ID="btnDelete" runat="server" CssClass="auto-style27" OnClick="btnDelete_Click" style="margin-left: 105px" Text="Delete" />
    <br />
    <br />
    <asp:GridView ID="gvMod" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowDeleting="gvMod_RowDeleting" OnSelectedIndexChanged="gvMod_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Select" ShowHeader="True" ShowSelectButton="True" />
            <asp:BoundField DataField="user_ID" HeaderText="user_ID" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="power" HeaderText="power" SortExpression="powr" />
            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
