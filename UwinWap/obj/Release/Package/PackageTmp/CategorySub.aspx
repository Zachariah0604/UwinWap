<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="CategorySub.aspx.cs" Inherits="UwinWap.CategorySub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
              			  <div class="page-role style-page">
	<link type="text/css" rel="stylesheet" href="css/list/style.css"/>
	<div class="pxui-area">
		<div class="pxui-tab pxui-tab-nav pxui-tab-no-top">
			<a href="index.aspx" data-transition="slidefade"><i></i>首页<span></span></a>
			<a href="CategoryPar.aspx" data-transition="slidefade"  class="selected"><i></i>分类<span></span></a>
			<a href="Brand.aspx" data-transition="slidefade"><i></i>品牌<span></span></a>
			<a href="Activity.aspx" data-transition="slidefade"><i></i>活动<span></span></a>
                    <%--<a href="user/UserCart.aspx"><i></i>购物车<span></span></a>--%>
		</div>
        <div class="pxui-list">
            <asp:Repeater ID="subTypeRepeter" runat="server"><ItemTemplate>
            <a href="ItemsList.aspx?condi=<%=itemAffiliSubType %><%#Eval("SubTypeID") %>" data-transition="slidefade" >
               
                <b><%# Eval("sTypeName") %></b>
                <i class="arrow-right"></i>
            </a>
           
                   
                </ItemTemplate></asp:Repeater>
          
        </div>
	</div>
</div>
		</div>
    </div>
</asp:Content>
