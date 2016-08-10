using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap
{
    public partial class Vedio : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        string condi = " and VedioChannelID=1";
        protected string itemsLists="";
        protected string Vediosource = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
          
                if (Session["StationId"] != null)
                {

                    VedioItemsListRepeterBind();
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('请新选择地区','SelectStation.aspx')", true);
            
                }
            }
           
        }
        private void VedioItemsListRepeterBind()
        {
                int videoAfiiliStation = int.Parse(Session["StationId"].ToString());
          
                DataTable dt = sqlcmd.getCommonData("Video", "*", " videoAfiiliStation= " + videoAfiiliStation + condi);
                
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["videoDir"].ToString() != null && dt.Rows[0]["videoDir"].ToString() != "")
                        Vediosource = "<source src='" + dt.Rows[0]["videoDir"].ToString() + "'><source src='" + dt.Rows[0]["videoDir"].ToString() + "' type=\"video/mp4\">";
                    else
                        Vediosource = "<source src=''><source src='' type=\"video/mp4\">";
                    string videoIemsArray = dt.Rows[0]["videoIemsArray"].ToString();
                    int videoIemsArrayLen = dt.Rows[0]["videoIemsArray"].ToString().Length;
                    if (videoIemsArray != null && videoIemsArrayLen != 0)
                    {
                        string[] itemslist = videoIemsArray.Split(',');
                        for (int j = 0; j < itemslist.Length; j++)
                        {
                            int itemsID = int.Parse(itemslist[j]);
                            DataTable dtitems = sqlcmd.getCommonData("Items", " itemName,itemDescri,itemTime,itemSaleNum", " itemsID=" + itemsID);
                            if (dtitems.Rows.Count > 0)
                            {
                                for (int m = 0; m < dtitems.Rows.Count; m++)
                                {
                                    string itemName=dtitems.Rows[0]["itemName"].ToString();
                                    string itemDescri = dtitems.Rows[m]["itemDescri"].ToString();
                                    string itemTime = dtitems.Rows[m]["itemTime"].ToString();
                                    string itemSaleNum = dtitems.Rows[m]["itemSaleNum"].ToString();
                                    itemsLists += "<li><div class=\"number\">" + itemSaleNum + "</div><div class=\"tag\"><div class=\"arrow\"><em></em><span></span></div><span style=\"font-size:18px;\">" + itemName + "</span>&nbsp;&nbsp;[<span class=\"time\">" + itemTime + "</span>]<div style=\"text-indent:2em\">" + itemDescri + "</div>&nbsp;&nbsp;&nbsp;<a href='ItemDetail.aspx?itemsID=" + itemsID + "'  data-transition=\"slidefade\">查看详细</a> </div></li>";
                                }
                            }
                           
                        }

                    }
            
            }
        }
        protected void ChannelFirstbtn_Click(object sender, EventArgs e)
        {
            condi = " and VedioChannelID=1";
            VedioItemsListRepeterBind();
        }

        protected void ChannelSecondbtn_Click(object sender, EventArgs e)
        {
            condi = " and VedioChannelID=2";
            VedioItemsListRepeterBind();
        }
    }
}