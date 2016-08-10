<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="GraphicDetails.aspx.cs" Inherits="UwinWap.GraphicDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
               
    <div class="page-role good-page">
    <link type="text/css" rel="stylesheet" href="../template/css/good/index.css" />
    <div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>图文详情</div>
	<div class="pxui-area pxui-imgshow" id="js-imgshow">
        <asp:Label ID="itemContent" runat="server" Text=""></asp:Label>
	</div>
    </div>
		</div>
    </div>
</asp:Content>
