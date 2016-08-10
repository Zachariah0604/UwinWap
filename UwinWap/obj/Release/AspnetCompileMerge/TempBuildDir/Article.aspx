<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="UwinWap.Article" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
              
              			  <div class="page-role">
                                <div style="font-size:20px; margin:auto; text-align:center; width:100%;height:30px;">
                                    <asp:Label ID="NewsTitle" runat="server" Text=""></asp:Label></div>
                                <div style="font-size:14px; margin:auto; text-align:center;width:100%; height:30px;">时间：<asp:Label ID="CreateTime" runat="server" Text=""></asp:Label>  作者：<asp:Label ID="Author" runat="server" Text=""></asp:Label> 来源：<asp:Label ID="Url" runat="server" Text=""></asp:Label>  点击：<asp:Label ID="Click" runat="server" Text=""></asp:Label></div>
                                <div style="font-size:14px; margin:auto; text-align:left; text-indent:2em; width:100%; ">
                                    <asp:Label ID="Content" runat="server" Text=""></asp:Label></div>
              			  </div>
        </div>
    </div>
</asp:Content>
