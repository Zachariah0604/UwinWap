<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="UwinWap.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
               
              			  <link type="text/css" rel="stylesheet" href="css/tuan/tuan.css"/>
<div class="page-role">
    <div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>新闻频道<a href="NewsType.aspx" data-transition="slidefade">分类浏览<i></i></a></div>
	
		<div id="js-goodlist">
            
            <asp:Repeater ID="NewsListRepeter" runat="server">
                <ItemTemplate>

               

                		<div class="tuan-list">
			<div class="img120">
                            
                         <a href='Article.aspx?NewsId=<%# Eval("NewsId") %>' data-transition="slidefade"><dfn></dfn><img src='http://139.129.201.126:88/FileUpload/Images/NewsImages/<%# Eval("PicUrl") %>'/>
                        </a>
                        </div>
			<a href='Article.aspx?NewsId=<%# Eval("NewsId") %>'  class="title" data-transition="slidefade">【<%# SetTypeName(Eval("TypeId").ToString()) %>】 <%#Eval("Title") %></a>
			<a href='Article.aspx?NewsId=<%# Eval("NewsId") %>'  class="detail" data-transition="slidefade"><!----></a>
			<p>
				<span class="pxui-color-red"><%#Convert.ToDateTime(Eval("CreateTime")).ToString("yyyy-MM-dd") %></span>
				<span class="pxui-color-yellow"><span class="red"><%#Eval("Click") %></span></span>
			</p>
		</div>
                     </ItemTemplate>
            </asp:Repeater>
                		
                
	</div>
        <div class="pxui-pages" >
		<div style=" width:95%; float:right; height:30px; margin-right:10px; margin-top:10px; text-align:right;">
                <div id="PageInfo" runat="server" class="anpager"></div>
            </div>
	</div>
    <div  class="pxui-pages" style="height:20px; width:100%" >
		
	</div>
	</div>

		</div>
    </div>
</asp:Content>
