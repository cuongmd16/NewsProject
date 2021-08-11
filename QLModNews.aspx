<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="QLModNews.aspx.cs" Inherits="TrangTinTucDonGian.QLModNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            margin-left: 36px;
        }
        .auto-style8 {
            margin-left: 33px;
        }
        .auto-style7 {
            margin-left: 31px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Quản lý bài viết đã đăng</h1>
    <div id="ndcontent">
     
    <div>
        <table>
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
        </div>
</asp:Content>
