<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="UserIndex.aspx.cs" Inherits="UwinWap.UserIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <link rel="stylesheet" type="text/css" href="css/usercenter/common_pc.css" />
    <link rel="stylesheet" type="text/css" href="css/usercenter/m-index.css" />
    <div class="com-content-area" style="margin-top:0px;" id="js-com-content-area">
         
            <div class="page-role home-page">
               <div id="op-wrap">
        <div id="op-aside"></div>
        <div id="op-wrap-mask"></div>
        <div id="op-content">






			 <div class="user-hd">
			    <div class="my-avatar">
			        <a href="UserLogin.aspx">
			        		<img src="http://statics.oneplus.cn/v2/img/user/avatar-default.png" alt="">
			            <span class="update-tip"><i class="i-update-avatar"></i></span>
			        </a>
			    </div>                
			    <div class="my-nickname">
			        <span>
           				 <a href="<%=userNameUrl %>"><em><asp:Label ID="userName" runat="server" Text=""></asp:Label></em></a>
			        </span>
			    </div>    
			    <ul class="my-stuffs" style="width:80%; margin:auto;">
			        <li style="width:24%">
			            <a href="#">
			                <span class="my-coupon">0</span>
			                <em>待付款</em>
			            </a>
			        </li>
			        <li style="width:24%">
			            <a href="#">
			                <span class="my-point">5</span>
			                <em>待发货</em>
			            </a>
			        </li>
			        <li style="width:24%">
			            
			             <a href="#">
			                <span class="my-point">2</span>
			                <em>待收货</em>
			            </a>
			        </li style="width:24%">
			        <li style="width:24%">
			            <a href="#">
			                <span class="my-point">3</span>
			                <em>待评价</em>
			            </a>
			        </li>
			    </ul>
			</div>  
			
            <div class="user-bd">
				<div class="user-aside">
				    <dl class="user-menu">
				        <dt>个人中心</dt>
				        <dd><a href="user/UserOrder.aspx" data-transition="slidefade"><i class="i-my-order"></i><img src="images/831cf6da0f28321f9cdae28402866750_4.jpg" width="15px" height="15px" />&nbsp;&nbsp;我的订单</a></dd>
				        <dd><a href="user/UserCart.aspx" data-transition="slidefade"><i class="i-my-cunpon"></i><img src="images/38da04740cc453c4d57b15a13cee25a8.png" width="15px" height="15px" />&nbsp;&nbsp;购物车</a></dd>
				        <dd><a href="user/UserAddress.aspx" data-transition="slidefade"><i class="i-my-address"></i><img src="images/plugmenu3.png" width="15px" height="15px" />&nbsp;&nbsp;收货地址</a></dd>
				        
				    </dl>
				    <dl class="user-menu">
				        <dt>账户管理</dt>
				        <dd><a href="user/UserInfo.aspx" data-transition="slidefade"><i class="i-my-account"></i><img src="images/831cf6da0f28321f9cdae28402866750.jpg" width="15px" height="15px" />&nbsp;&nbsp;个人信息</a></dd>
				        <dd><a href="user/UserPassword.aspx" data-transition="slidefade"><i class="i-my-imei"></i><img src="images/39acbd0cdc186f0ffdcae2844ebe92e0_03.jpg" width="15px" height="15px" />&nbsp;&nbsp;修改密码</a></dd>
				    </dl>
				    <dl class="user-menu">
				        <dt>系统设置</dt>
				        <dd><asp:LinkButton ID="FeedBackBtn" runat="server" OnClick="FeedBackBtn_Click" ><i class="i-my-insure"></i><img src="images/831cf6da0f28321f9cdae28402866750_2.jpg" width="15px" height="15px" />&nbsp;&nbsp;我要反馈</asp:LinkButton></dd>
				        <dd><a href="AboutApp.aspx" data-transition="slidefade"><i class="i-my-return"></i><img src="images/f51803d41be189713961fd50f0e7125c.jpg" width="15px" height="15px" />&nbsp;&nbsp;关于App</a></dd>
				        <dd><a href="#"><i class="i-my-return"></i><img src="images/7a1bbe3fca0b07dc48d869d473da4c7d.jpg" width="15px" height="15px" />&nbsp;&nbsp;检查更新</a></dd>
				    </dl>
				</div> 
				<div class="user-content">
                    <div class="logout">
                        <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">退出登录</asp:LinkButton>
                        </div>
	            </div>
                <div style="height:50px;">
                    
	            </div>


	    </div>
        </div>
</div>    
                </div>
        </div>

    </div>

</asp:Content>
