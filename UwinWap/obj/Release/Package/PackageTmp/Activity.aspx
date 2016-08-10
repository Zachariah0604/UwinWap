<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Activity.aspx.cs" Inherits="UwinWap.Activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
             
              			 
<div class="page-role topic-page">
	<div class="page-title"><a href="javascript:history.back();void(0)" class="return"  data-transition="slidefade">返 回</a>活动列表
        </div>
                <asp:Repeater ID="ActivityListRepeter" runat="server"><ItemTemplate>
               <div class="pxui-area" style="margin-bottom:10px;">
                                <img src="http://139.129.201.126:88/FileUpload/Images/ActivityImages/<%# Eval("ActivityThumb") %>" width="100%" />
				                <h3>活动介绍：</h3>
		<p><%#Eval("ActivityName") %>&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("ActivityCreatime") %></p>
			</div>
                     </ItemTemplate></asp:Repeater>
	
	
</div>

		</div>
    </div>
</asp:Content>
