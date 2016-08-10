<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="UwinWap.Brand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
   
          <div class="com-content-area" id="js-com-content-area">
                <!--content-->
              			  <link type="text/css" rel="stylesheet" href="css/brand/index.css"/>


<div class="page-role">
    
	<div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>品牌大全</div>
    <div class="tab-box" id="js-letter" style="display:block;">
        <div class="brands">
			<div class="brandbox">
            	               <asp:Repeater runat="server" ID="BrandRepeter">
                                   <ItemTemplate>
                                        <a href="ItemsList.aspx?condi=<%=Brandlk %><%#Eval("BrandID") %>" data-transition="slidefade"><i><img src='http://139.129.201.126:88/FileUpload/Images/Brand/<%#Eval("BrandLogo") %>'  onerror="this.src='http://ued.paixie.net/images/brandlist/no-brand-logo.png?1'"  alt='<%#Eval("BrandName") %>' width="100" height="50"/></i></a>
                                   </ItemTemplate>
            	               </asp:Repeater>                                   						
				       
				                                                                     						
				       
				                                  			</div>
		</div>
        </div>
    </div>
              </div>
    </div>
</asp:Content>
