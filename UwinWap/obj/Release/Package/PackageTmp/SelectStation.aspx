<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="SelectStation.aspx.cs" Inherits="UwinWap.SelectStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="com-content-area" id="js-com-content-area">
              			  <div class="page-role style-page">
	<link type="text/css" rel="stylesheet" href="css/list/style.css"/>
	<div class="pxui-area">
		<div class="page-title"><a class="return" href="javascript:history.back();void(0)" data-transition="slidefade">返 回</a>选择地区</div>
        <div class="pxui-list">
            <asp:Repeater ID="StationRepeter" runat="server"><ItemTemplate>
            <a href="index.aspx?stationid=<%#Eval("staid") %>"  data-transition="slidefade">
               
                <b><%# Eval("station") %></b>
                <i class="arrow-right"></i>
            </a>
           
                   
                </ItemTemplate></asp:Repeater>
          
        </div>
	</div>
</div>
		</div>
    </div>
</asp:Content>
