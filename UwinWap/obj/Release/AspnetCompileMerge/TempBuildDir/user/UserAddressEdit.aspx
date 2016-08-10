<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="UserAddressEdit.aspx.cs" Inherits="UwinWap.user.UserAddressEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
        <div class="page-title"><a href="javascript:history.back();void(0)" class="return">返 回</a>添加收货地址</div>
        <div class="pxui-form-info" id="js-login-form">
            <div><span>收&nbsp;货&nbsp;人</span><p><span>
                <asp:TextBox ID="ReceUser" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="收货人不能为空" ControlToValidate="ReceUser"></asp:RequiredFieldValidator></span></p>
            </div>
            <div><span>联系电话</span><p><span>
                <asp:TextBox ID="ReceTele" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="联系电话不能为空" ControlToValidate="ReceTele"></asp:RequiredFieldValidator></span></p>
            </div>
            <div><span>所在地区</span><p><span>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" style="height:30px; width:200px;">
            <ContentTemplate>
                <asp:DropDownList ID="ddlProvince" runat="server" style="width:60px;"></asp:DropDownList>
                <asp:DropDownList ID="ddlCity" runat="server" style="width:60px;"></asp:DropDownList>
                <asp:DropDownList ID="ddlVilliage" runat="server" style="width:60px;"></asp:DropDownList>
                
                <ajax:cascadingdropdown id="CascadingDropDown2" runat="server" TargetControlID="ddlProvince" ServicePath="SNWebService.asmx" ServiceMethod="GetProvinceContents" Category="Province" PromptText="请选择省份" LoadingText="省份加载中...">
                </ajax:cascadingdropdown>
                
                <ajax:cascadingdropdown ID="CascadingDropDown1" runat="server" ParentControlID="ddlProvince" ServicePath="SNWebService.asmx" ServiceMethod="GetCityContents" Category="City" TargetControlID="ddlCity" PromptText="请选择城市" LoadingText="城市加载中..."></ajax:cascadingdropdown>
                
                <ajax:cascadingdropdown ID="CascadingDropDown3" runat="server" Category="Villiage" LoadingText="区县加载中..." ParentControlID="ddlCity" PromptText="请选择区县" ServiceMethod="GetViliageContents" ServicePath="SNWebService.asmx" TargetControlID="ddlVilliage"></ajax:cascadingdropdown>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
      </span></p>
            </div>
            <div><span>详细地址</span><p><span>
                <asp:TextBox ID="ReceAddress" TextMode="MultiLine" class="input_from" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="详细地址不能为空" ControlToValidate="ReceAddress"></asp:RequiredFieldValidator></span></p>
            </div>
            <div>
                <span>&nbsp;</span><p>
                    <span>
                        <asp:Button ID="Editbtn" runat="server" Text="修改" class="pxui-light-button" OnClick="Editbtn_Click"/>
                       
                    </span>
                </p>
            </div>
            </div>
         </div>
    </div>
</asp:Content>
