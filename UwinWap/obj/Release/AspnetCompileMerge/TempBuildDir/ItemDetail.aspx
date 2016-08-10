<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="UwinWap.ItemDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
                <!--content-->
              			  <div class="page-role good-page">
    <link type="text/css" rel="stylesheet" href="css/good/index.css" />
    
	
	

    <div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>商品详情</div>
    <div class="pxui-area">
        <h1>
            <asp:Label ID="itemName" runat="server" Text="itemName"></asp:Label>
        </h1>
                  

		<div class="touchslider">
			<div class="touchslider-viewport" style="height:280px;overflow:hidden"><div>
								<div class="touchslider-item"><a><span class="img320"><dfn></dfn>
                                    <asp:Image ID="Thumb" runat="server" /></span></a></div>
							</div></div>
		
			<div class="touchslider-navtag">
				
			</div>
		</div>		
                        <div class="pxui-list" data-model="radio">                      
                            <a><asp:Label ID="itemAffiliMerchant" runat="server" Text="itemAffiliMerchant"></asp:Label><i class="arrow-right"></i></a>
                <div class="pxui-list-con" style="display:none;">
                                          
                             </div>  
            <div style="clear:both;height:4px;margin: 0;padding: 0px; width:100%;"></div>
                    </div>
        		<a class="pxui-gray-button" href='GraphicDetails.aspx?itemsID=<%=itmid %>' data-transition="slidefade">点击查看图文详情&nbsp;&nbsp;<i class="arrow-right"></i></a>
		
        <ul class="goodinfo" id="js-goodinfo">
                        <li>
                <b name="detail_mao" id="detail_mao"><asp:Label ID="ItemsPrice" runat="server" Text="ItemsPrice"></asp:Label>
            </li>
            <li>
                <b>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费:</b>
                <div>
                    <p>
                        <span>免运费 ,支持货到付款</span> 
                                            </p> 
                </div>
            </li>
            <li>
                <b>服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务:</b>
                <div>
                    <p>
                     由悦赢销售并提供售后服务。                    </p>
                </div>
            </li>
                       
            
            <li >
                <b style="line-height:39px;">数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量:</b>
                <div><p>
                        <span class="pxui-select num">
                            <span>0</span>
                            <i></i>
                            <select>
                                <option value="0">0</option>
                            </select>
                        </span>
                        <span class="pxui-color-red"></span>
                    </p></div>
            </li>
                    </ul>
                <input type="button" class="pxui-light-button addtocart" value="立即结算" data-transition="slidefade"/>
                <h3 id="js-attrs-title">商品描述</h3>
        <div class="attrs" style="text-indent:2em;">
            <asp:Label ID="itemDescri" runat="server" Text=""></asp:Label>
        </div>
       
                <h3>服务承诺<a href="#">返回顶部<i class="arrow2-top"></i></a></h3>
        <ul class="services">
            <li><i></i> 正品保证 假一赔十</li>
            <li><i></i> 15天无理由免邮退换货</li>
            <li><i></i> 10天保值 差价返还</li>
                             
                    <li><i></i> 自营商品满 99 包邮</li>
                                                <li><i></i> 货到付款 全国范围</li>     
                                    </ul>
                <h3>用户评论<a href="#">返回顶部<i class="arrow2-top"></i></a></h3>
        <div id="js-comment-list" style="display:block; text-align:center;">
            暂未开放
        </div>
       
                <input value="加入购物车" class="pxui-gray-button" id="js-go-favorites" type="button" data-transition="slidefade"/>
                <div class="fixed-add-to-cart" id="js-fixed-add-to-cart">
            <div>
                
                <input type="button" class="pxui-light-button addtocart" value="立即结算" data-transition="slidefade"/>
            </div>
        </div>
    </div>
</div>


		</div>
    </div>
</asp:Content>
