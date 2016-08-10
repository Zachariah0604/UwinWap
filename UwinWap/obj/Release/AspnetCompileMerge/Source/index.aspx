<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UwinWap.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
        <div class="com-content-area" style="margin-top:0px;" id="js-com-content-area">
         
            <div class="page-role home-page">
                <link type="text/css" rel="stylesheet" href="css/home/index.css" />
             

                <div class="touchslider">
                    <div class="touchslider-viewport">
                        <div class="touchslider-item"><a id="bannerlink" runat="server">
                            <img style="vertical-align: top;"  id="banner" runat="server" /></a></div>
                       
                    </div>
                   
                </div>

               <div class="pxui-tab pxui-tab-nav pxui-tab-no-top">
			<a href="index.aspx" class="selected" data-transition="slidefade"><i></i>首页<span></span></a>
			<a href="CategoryPar.aspx" data-transition="slidefade"><i></i>分类<span></span></a>
			<a href="Brand.aspx" data-transition="slidefade"><i></i>品牌<span></span></a>
			<a href="Activity.aspx" data-transition="slidefade"><i></i>活动<span></span></a>
                   <%-- <a href="user/UserCart.aspx"><i></i>购物车<span></span></a>--%>
		</div>
                <div class="tags">
                    <table border="0" cellspacing="5" cellpadding="0">
                        <tr>
                            <td colspan="2"><a href=""><i></i>悦赢APP<br />
                                您生活的好帮手</a></td>
                            <td><a href="ItemsList.aspx?condi=<%=isseckill %>">秒杀特价</a></td>
                            <td rowspan="2"><a href="ItemsList.aspx?condi=<%=istrial %>"><i></i>限<br />
                                时<br />
                                试<br />
                                用</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" data-transition="slidefade"><b>活动名</b></a></td>
                            <td colspan="2"><a href="#" data-transition="slidefade">活动名称2</a></td>
                        </tr>
                    </table>
                </div>
                <asp:Repeater ID="ItemsParTypeRepeter" runat="server" OnItemDataBound="ItemsParTypeRepeter_ItemDataBound">
                    <ItemTemplate>
                        <div class="pxui-area styles" >
                            <span id="StyleOne" runat="server">
                            <h2 style="background-color: #ffaf51;"><a href="CategoryPar.aspx" style="color: #FFFFFF;"><%# Eval("pTypeName") %></a></h2>
                            <a class="max" href="CategoryPar.aspx">
                                <img src="http://www.yueying.tv/FileUpload/Images/ItemsThumb/menu/<%# Eval("pTypeThumb") %>" width="120" height="140" /></a>
                            </span>

                            <div>
                                <p>
                                    <asp:Repeater ID="ItemsSubTypeRepeter" runat="server">
                                        <ItemTemplate>
                                            <a href="ItemsList.aspx?condi=<%=itemAffiliSubType %><%#Eval("SubTypeID") %>" style="margin-right: 3px; color: #000; border: 1px solid #ffaf51;"><%# Eval("sTypeName") %></a>


                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <a href="CategoryPar.aspx" class="more" data-transition="slidefade">更多<del><i class="arrow-right"></i></del></a>
                                </p>
                            </div>
                            <span runat="server" id="StyleTwo">
                                <a class="max" href="p-anta__1.html@page=5">
                                <img src="www.yueying.tv/FileUpload/Images/ItemsThumb/menu/<%# Eval("pTypeThumb") %>" width="120" height="140" /></a>
                            <h2 style="background-color: #ff8080;"><a href="CategoryPar.aspx" style="color: #FFFFFF;"><%# Eval("pTypeName") %></a></h2>
                            </span>

                        </div>

                       
                    </ItemTemplate>
                </asp:Repeater>

               
                <div class="pxui-area">
                    <h3><b>Top5</b> 最新推荐<a class="pxui-button" href="topic/594.html"><span>+</span> 更多 &gt;&gt;</a></h3>
                    <div class="pxui-shoes">
                        <div>
                            <asp:Repeater ID="New2Repeter" runat="server">
                                <ItemTemplate>
                            <a href="ItemDetail.aspx?itemsID=<%#Eval("itemsID") %>" data-transition="slidefade">

                                <div class="img160"><dfn></dfn>
                                    <img src="http://139.129.201.126:88/FileUpload/Images/ItemsThumb/<%# Eval("itemThumbnail") %>" /></div>
                                <span class="name"><%# Eval("itemName") %></span>
                                <span class="price">￥ <%# Eval("itemSalePrice") %></span>
                                <del class="price">￥ <%# Eval("itemMarketPrice") %></del>
                                <span class="tag"><%#Container.ItemIndex+1%></span>
                            </a>
                            
                            </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="pxui-list">
                        <asp:Repeater ID="New3to5Repeter" runat="server">
                                <ItemTemplate>
                        <a href="ItemDetail.aspx?itemsID=<%#Eval("itemsID") %>"  style="width:100%" data-transition="slidefade"><span class="pxui-bg-blue pxui-color-white" style="width:10%;"><%#Container.ItemIndex+3%></span><p style="width:60%;"><%# Eval("itemName") %></p>
                            <b style="width:20%;">￥ <%# Eval("itemSalePrice") %></b></a>
                       
                                     </ItemTemplate>
                            </asp:Repeater>
                    </div>
                </div>
                <div class="pxui-area">
                    <h3><b>Brand</b> 品牌推荐</h3>
                    <div class="brands">
                        <div id="js-brand-list">
                        </div>
                    </div>
                    <div class="pxui-show-more" id="js-show-more-btand" lastid="1" template="#js-brand-template" srcproperty="truesrc" container="#js-brand-list" url="/home/ajax?act=brand_more">
                        <asp:Repeater ID="BrandRepeter" runat="server">
                            <ItemTemplate>

                            
                        <a href="ItemsList.aspx?condi=<%=Brandlk %><%#Eval("BrandID") %>" data-transition="slidefade" style="margin-right: 3px; color: #000; border: 1px solid #ffaf51;"><%# Eval("BrandName") %></a>
                                </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div style="width:100%; height:30px;"></div>
            </div>

        </div>

    </div>
</asp:Content>
