<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="NewsType.aspx.cs" Inherits="UwinWap.NewsType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
              			  <div class="page-role style-page">
	<link type="text/css" rel="stylesheet" href="css/list/style.css"/>
                                 <div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>文章分类</div>
	<div class="pxui-area">
		
        <div class="pxui-list">
            <asp:Repeater ID="NewsTypeRepeter" runat="server"><ItemTemplate>
            <a href="NewsList.aspx?Typeid=<%#Eval("Typeid") %>" data-transition="slidefade" >
               
                <b><%# Eval("TypeName") %></b>
                <i class="arrow-right"></i>
            </a>
           
                   
                </ItemTemplate></asp:Repeater>
          
        </div>
	</div>
</div>
		</div>
    </div>
</asp:Content>
