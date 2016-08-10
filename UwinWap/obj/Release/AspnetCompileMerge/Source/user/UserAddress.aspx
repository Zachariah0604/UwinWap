<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="UserAddress.aspx.cs" Inherits="UwinWap.user.UserAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">

        <div class="page-role">
            <div class="page-title">
                <a class="return" href="javascript:history.back();void(0)">返 回</a>我的收货地址
            </div>


            <asp:Repeater ID="UserAddressRepeter" runat="server"><ItemTemplate>
                <div style="width:100%; background:#fff">
                <div style="width:90%; height:30px; line-height:30px; margin:auto;">
                    <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                    <span style="float:left; width:130px;"><%# Eval("ReceUser") %></span>
                    <span style="float:right; width:90px;"><%# Eval("ReceTele") %></span>
                </div>
                <div style="width:90%;  margin:auto; border-bottom:1px solid #808080">
                    <%#Eval("ReceArea") %>&nbsp;<%# Eval("ReceAddress") %></div>
                 <div style="width:90%;  margin:auto;background:#fff;text-align:right">
                    <a href='UserAddressEdit.aspx?id=<%#Eval("id") %>'   ><img src="../images/edit.png" width="13px" height="13px" border="0" />&nbsp;编辑</a>&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="UserDelAddress" runat="server" OnClick="UserDelAddress_Click"><img src="../images/delete.png" width="13px" height="13px" border="0" />&nbsp;删除</asp:LinkButton>
                    
                     
               
                </div>
               
            </div>
                <div style="height:20px;"></div>
                          </ItemTemplate></asp:Repeater>
            
            
            <asp:Button ID="AddAddress" runat="server" Text="添加新地址" style="width:100%;  color:#fff; background:#fb4e3a; margin:20px auto; height:40px; " OnClick="AddAddress_Click" />
            </div>
        </div>
    </div>
</asp:Content>
