<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="ItemsList.aspx.cs" Inherits="UwinWap.ItemsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
              
              			  <div class="page-role">
	<div class="page-title">
		<a href="javascript:history.back();void(0)" class="return" data-transition="slidefade">返 回</a>
		
		<a href="CategoryPar.aspx">分类查看<i></i></a>	</div>
		<div class="pxui-tab" style="margin-bottom:10px;">
            <asp:LinkButton ID="ItemsSecKillbtn" runat="server" CssClass="linkbtn" OnClick="ItemsSecKillbtn_Click" data-transition="slidefade">秒杀</asp:LinkButton>
            <asp:LinkButton ID="ItemsTrialbtn" runat="server" CssClass="linkbtn" OnClick="ItemsTrialbtn_Click" data-transition="slidefade">试用</asp:LinkButton>
            <asp:LinkButton ID="ItemsPricebtn" runat="server" CssClass="linkbtn" OnClick="ItemsPricebtn_Click" data-transition="slidefade">价格<i class="arrow2-top gray"></i>
			<i class="arrow2-bottom gray"></i></asp:LinkButton>
            <asp:LinkButton ID="ItemsSaleNumbtn" runat="server" CssClass="linkbtn" OnClick="ItemsSaleNumbtn_Click" data-transition="slidefade">销量</asp:LinkButton>
            <asp:LinkButton ID="ItemsNewbtn" runat="server" CssClass="linkbtn" OnClick="ItemsNewbtn_Click" data-transition="slidefade">最新</asp:LinkButton>
          
	</div>
		<div class="pxui-area">
				<div class="pxui-shoes">
			<div id="js-goodlist">
                <asp:Repeater ID="itemsListRepeter" runat="server">
                    <ItemTemplate>
                        <a href='ItemDetail.aspx?itemsID=<%#Eval("itemsID") %>' data-transition="pop">
					<div class="img160"><dfn></dfn><img src='http://139.129.201.126:88//FileUpload/Images/ItemsThumb/<%#Eval("itemThumbnail") %>'></div>
					<span class="name"><%#Eval("itemName") %></span>
					<span class="price">￥<%#Eval("itemSalePrice") %></span><del class="price">￥<%#Eval("itemMarketPrice") %></del><img class="tag" style=""src="http://img-cdn2.paixie.net/images/empty.gif" goodsrc=""/></a>
                    </ItemTemplate>
                </asp:Repeater>
                                                              
                                                             
                                                             
                               			</div>
		</div>
        <div class="pxui-pages">
			<div style=" width:98%; float:right; height:30px; font-size:12px; margin-right:10px; margin-top:10px; text-align:right;">
                <div id="PageInfo" runat="server" class="anpager"></div>
            </div>
		</div>
            <div  class="pxui-pages" style="height:20px; width:100%" >
		
	</div>
			</div>
</div>

		</div>
    </div>
</asp:Content>
