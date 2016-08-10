<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="UwinWap.User.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
        <div class="page-title"><a href="javascript:history.back();void(0)" class="return" data-transition="slidefade">返 回</a>登录悦赢<a href="Register.aspx" data-transition="slidefade">注册<i></i></a></div>
        <div class="pxui-form-info" id="js-login-form">
            <input type="hidden" name="rtnurl" value="index" />
            <p class="error-msg" id="js-error-msg"></p>
            <div style="margin:auto;"><p><span>
                <asp:TextBox ID="UserName" runat="server" placeholder="用户名" ></asp:TextBox></span></p>
            </div>
            <div><p><span>
                <asp:TextBox ID="Password" TextMode="Password" runat="server" placeholder="密码"></asp:TextBox></span></p>
            </div>
            <div>
                <span>&nbsp;</span><p>
                    <span>
                        <asp:Button ID="UserLoginBtn" runat="server" Text="登录" class="pxui-light-button" OnClick="UserLoginBtn_Click"/>
                        <a class="pxui-gray-button" href="forget_phone" data-transition="slidefade">找回密码</a>
                    </span>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
