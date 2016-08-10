<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="UserPassword.aspx.cs" Inherits="UwinWap.user.UserPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="com-content-area" id="js-com-content-area">

        <div class="page-role">
            <div class="page-title">
                <a class="return" href="javascript:history.back();void(0)">返 回</a>修改密码
            </div>
            <div class="pxui-form-info" id="js-login-form">
            <input type="hidden" name="rtnurl" value="index" />
            <p class="error-msg" id="js-error-msg"></p>
            <div><span>原&nbsp;密&nbsp;码</span><p><span>
                <asp:TextBox ID="OldPassword" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="旧密码不能为空" ControlToValidate="OldPassword"></asp:RequiredFieldValidator></span></p>
            </div>
            <div><span>新&nbsp;密&nbsp;码</span><p><span>
                <asp:TextBox ID="userPassword" TextMode="Password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="新密码不能为空" ControlToValidate="userPassword"></asp:RequiredFieldValidator></span></p>
            </div>
                <div><span>确认密码</span><p><span>
                <asp:TextBox ID="userPasswordConfirm" TextMode="Password" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="不能为空" ControlToValidate="userPasswordConfirm"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致！" ControlToCompare="userPassword" ControlToValidate="userPasswordConfirm"></asp:CompareValidator></span></p>
            </div>
            <div>
                <span>&nbsp;</span><p>
                    <span>
                        <asp:Button ID="EditBtn" runat="server" Text="确认修改" class="pxui-light-button" OnClick="EditBtn_Click"/>
                    </span>
                </p>
            </div>
        </div>


            </div>
         </div>
    </div>
</asp:Content>
