<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="UserOrder.aspx.cs" Inherits="UwinWap.user.UserOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link type="text/css" rel="stylesheet" href="../css/tuan/tuan.css"/>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">

        <div class="page-role">
            <div class="page-title">
                <a class="return" href="javascript:history.back();void(0)">返 回</a>我的订单
            </div>

            <div class="pxui-tab">
                <asp:LinkButton ID="OrderState0" runat="server" OnClick="OrderState0_Click">全部</asp:LinkButton>
                <asp:LinkButton ID="OrderState1" runat="server" OnClick="OrderState1_Click">待付款</asp:LinkButton>
                <asp:LinkButton ID="OrderState3" runat="server" OnClick="OrderState3_Click">待发货</asp:LinkButton>
                <asp:LinkButton ID="OrderState5" runat="server" OnClick="OrderState5_Click">待收货</asp:LinkButton>
                <asp:LinkButton ID="OrderState7" runat="server" OnClick="OrderState7_Click">待退款</asp:LinkButton>
	</div>
             <div id="js-goodlist">
            <asp:Repeater ID="UserOrderRepeter" runat="server">
                <ItemTemplate>
                    <div class="order-list">
			<div class="img80">
                            
                         <a href='../ItemDetail.aspx?itemsID=<%# Eval("orderItemID") %>'><dfn></dfn><img src='http://139.129.201.126:88/FileUpload/Images/ItemsThumb/<%# SetItemsThumb(Eval("orderItemID").ToString()) %>' />
                        </a>
                        </div>
			<a href='../ItemDetail.aspx?itemsID=<%# Eval("orderItemID") %>'  class="title" > <%#SetItemName(Eval("orderItemID").ToString()) %></a>
			
			<p>
				<span class="pxui-color-red"><%#Eval("orderCount") %>件</span>
				<span class="pxui-color-yellow">&nbsp;&nbsp;&nbsp;￥<%#Eval("orderCost") %>（含运费）</span></span>
                <span class="pxui-color-yellow">&nbsp;&nbsp;&nbsp;<%#SetStateName(Eval("orderState").ToString()) %></span></span></p>
                        <p style=" height:26px; margin-top:5px;" >
                            <asp:LinkButton ID="UserDelOrder" runat="server" CssClass="userorderbtn" OnClick="UserDelOrder_Click">删除</asp:LinkButton>
                            <asp:LinkButton ID="UserExp" runat="server" CssClass="userorderbtn" OnClick="UserExp_Click" style="margin-left:10px;" >物流</asp:LinkButton>
                            <asp:LinkButton ID="UserRe" runat="server" CssClass="userorderbtn" OnClick="UserRe_Click" style="margin-left:10px; background-color:#fb4e3a; color:#fff">评价</asp:LinkButton>
                          
                        </p>
		</div>
                </ItemTemplate>
            </asp:Repeater>
                 </div>

            <div class="pxui-pages" >
		<div style=" width:95%; float:right; height:30px; margin-right:10px; margin-top:10px; text-align:right;">
                <div id="PageInfo" runat="server" class="anpager"></div>
            </div>
	</div>
    <div  class="pxui-pages" style="height:20px; width:100%" >
		
	</div>
        </div>
        </div>
    </div>

</asp:Content>
