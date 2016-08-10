<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UwinWap.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">


        <div class="page-role">

            <div class="page-title"><a href="javascript:history.back();void(0)" class="return" data-transition="slidefade">返 回</a>注册悦赢<a href="UserLogin.aspx" data-transition="slidefade">登录<i></i></a></div>
            <div class="pxui-form-info" id="js-register-form">
                <p class="error-msg" id="js-error-msg"></p>
                <div><span>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</span><p><span>
                    <input id="js-username" placeholder="邮箱/手机号码" type="text" /></span></p>
                </div>
                <div class="phone-box" style="display: none;"><span>&nbsp;</span><p><span>
                    <input id="js-get-phone" type="button" value="获取验证码" /></span></p>
                </div>
                <div class="phone-box" style="display: none;"><span>验&nbsp;&nbsp;&nbsp;证&nbsp;&nbsp;&nbsp;码</span><p><span>
                    <input placeholder="请输入手机验证码" id="js-code" type="text" /></span></p>
                </div>
                <div><span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span><p><span>
                    <input id="js-password" placeholder="6-16位密码" type="text" /></span></p>
                </div>
                <div>
                    <span>&nbsp;</span><p><span>
                        <input id="js-show-psw" checked="" type="checkbox" value="1" />
                        <label for="js-show-psw">显示密码</label></span></p>

                </div>
                <div><span>&nbsp;</span><p><span>
                    <input type="button" value="   注  册   " id="js-register" class="pxui-light-button" /></span></p>
                </div>
            </div>
           
        </div>
    </div>
    </div>
</asp:Content>
