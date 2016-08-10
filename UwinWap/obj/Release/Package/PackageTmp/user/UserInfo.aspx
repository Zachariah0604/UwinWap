<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="UwinWap.user.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="com-content-area" id="js-com-content-area">

        <div class="page-role">
            <div class="page-title">
                <a class="return" href="javascript:history.back();void(0)">返 回</a>个人信息
            </div>
            <div style="margin-left:20px;">
            <div><span>用户名：</span><span><asp:Label ID="userName" runat="server" Text=""></asp:Label></span></div>

            <div><span>性别：</span><span><asp:Label ID="userSex" runat="server" Text=""></asp:Label></span></div>
            <div><span>注册邮箱：</span><span><asp:Label ID="userEmail" runat="server" Text=""></asp:Label></span></div>
            <div><span>联系电话：</span><span><asp:Label ID="userTele" runat="server" Text=""></asp:Label></span></div>
            <div><span>用户级别：</span><span><asp:Label ID="userLevel" runat="server" Text=""></asp:Label></span></div>
            <div><span>vip级别：</span><span><asp:Label ID="userVipLevel" runat="server" Text=""></asp:Label></span></div>
            <div><span>创建时间：</span><span><asp:Label ID="userCreatime" runat="server" Text=""></asp:Label></span></div>
</div>
            </div>
         </div>
    </div>
</asp:Content>
