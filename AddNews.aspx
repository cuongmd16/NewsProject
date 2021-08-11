<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="TrangTinTucDonGian.AddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Thêm bản tin mới cho Website</h1>
    <div id="ndcontent">
        <h4>Chọn bản tin: </h4>
        <asp:DropDownList ID="drDanhMuc" runat="server" Height="22px" Width="400px"></asp:DropDownList>
        <br />
        <h4>Tác giả
            <asp:Label ID="lblID" runat="server"></asp:Label>
        </h4>
        <br />
        <h4>Tiêu đề bản tin:</h4>
        <asp:TextBox ID="TxtTitle" runat="server" Width="600px" Height="22px"></asp:TextBox>
        <h4>Nội dung bản tin</h4>
        <asp:TextBox ID="txtBody" runat="server" Height="155px" Width="595px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add News" OnClick="btnAdd_Click" />
    </div>
</asp:Content>
