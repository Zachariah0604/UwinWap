<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Vedio.aspx.cs" Inherits="UwinWap.Vedio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="css/Vedio/Vedio.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <style type="text/css">
        ul.timeline { list-style-type: none; background: url("images/vedio/version_line.png") repeat-y scroll 22px 0 transparent; margin:auto; margin-top:50px; padding: 0; width:95%; }
        ul.timeline li { position: relative; margin-bottom: 20px; }
        /*ul.timeline li .time { position: absolute; width: 90px; text-align: right; left: 0; top: 10px; color: #999; }
        ul.timeline li .version { position: absolute; width: 90px; text-align: right; left: -40px; top: 30px; font-size: 18px; line-height:18px; color: #3594cb; overflow: hidden; }*/
        ul.timeline li .number { position: absolute; background: url("images/vedio/version_dot.png") no-repeat scroll 0 0 transparent; width: 56px; height: 56px; left:0px; line-height: 56px; text-align: center; color: #fff; font-size: 18px; }
        ul.timeline li.alt .number { background-image: url("images/vedio/version_dot_alt.png"); }
        ul.timeline li .content { margin-left: 60px;}
        ul.timeline li #conborder{  border-width:25px; border-style:solid dashed dashed; border-color: transparent #09F transparent transparent ; font-size:0; line-height:0;}
        ul.timeline li .content {  padding: 20px; color: #000; font-size: 13px; line-height: 20px; }

        ul.timeline li .tag{ margin-left: 80px; padding: 20px; color: #000; font-size: 13px; line-height: 20px;border-left:4px solid #ff0000; position:relative; background-color:#FFF;}
        ul.timeline li .arrow{ position:absolute; width:40px; height:40px; top:10px; left:-40px; }
        ul.timeline li .arrow *{ display:block; border-width:20px; position:absolute; border-style:dashed solid dashed dashed; font-size:0; line-height:0; }
        ul.timeline li .arrow em{border-color:transparent #ff0000 transparent transparent;}
        ul.timeline li .arrow span{border-color:transparent #FFF transparent transparent; top:-5px; width:10px;height:10px;} 
        ul.timeline li .arrow title{font-size:18px; height:20px;} 
        ul.timeline li .arrow time{font-size:16px; color:gray;} 
        ul.timeline li.alt .content { background-color: #43B1F1; }
    </style>
    <div class="com-content-area" id="js-com-content-area">
        <div class="page-role">
            <div class="pxui-tab" style="margin-bottom: 10px;">
                <asp:LinkButton ID="ChannelFirstbtn" runat="server" CssClass="channellinkbtn" OnClick="ChannelFirstbtn_Click"  data-transition="slidefade">频道1</asp:LinkButton>
                <asp:LinkButton ID="ChannelSecondbtn" runat="server" CssClass="channellinkbtn" OnClick="ChannelSecondbtn_Click" data-transition="slidefade">频道2</asp:LinkButton>
            </div>

            <div class="pxui-area">

                <video controls="controls" poster="screen.jpg" onplay="ture" width="592" height="252" onclick="if(/Android/.test(navigator.userAgent))this.play();">
                   <%=Vediosource %>
                </video>

                <ul class="timeline">
                   <%=itemsLists %>

                </ul>

                <script>

                    $(function () {


                        var nextDataNumber = 5;



                        var ulNode = $('ul.timeline');



                        function initLiNodes() {

                            var liNodes = ulNode.find('li'), count = liNodes.length, i, liNode, leftCount = nextDataNumber * 20;

                            for (i = 0; i < count; i++) {

                                liNode = $(liNodes.get(i));
                                if (i % 2 !== 0) {

                                    liNode.addClass('alt');

                                } else {

                                    liNode.removeClass('alt');

                                }

                                liNode.find('.number').text(leftCount + count - i);

                            }

                        }





                        $('#fetchNextData').click(function () {

                            var $this = $(this);

                            $this.addClass('disabled').text('......');



                            $.get('./version_data_' + nextDataNumber + '.txt', function (data) {

                                ulNode.append(data);

                                $this.removeClass('disabled').text('后二十条数据');

                                nextDataNumber--;



                                if (nextDataNumber === 0) {

                                    $this.hide();

                                }



                                initLiNodes();

                            });



                        });



                        initLiNodes();



                    });

                </script>

            </div>
        </div>
    </div>


</div>
</asp:Content>
