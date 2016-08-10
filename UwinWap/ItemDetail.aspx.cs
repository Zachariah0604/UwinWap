using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap
{
    public partial class ItemDetail : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected int itmid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["itemsID"] == null)
                {
                    Response.Redirect("ItemsList");
                }
                else 
                {
                    int itemsID = int.Parse(Request.QueryString["itemsID"].ToString());
                    itmid = itemsID;
                    DataTable dt = sqlcmd.getCommonData(" Items ", " * ", " itemsID=" + itemsID);
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["itemThumbnail"].ToString() != "")
                            Thumb.ImageUrl = "http://139.129.201.126:88//FileUpload/Images/ItemsThumb/"+dt.Rows[0]["itemThumbnail"].ToString();
                        if (dt.Rows[0]["itemName"].ToString()!="")
                            itemName.Text = dt.Rows[0]["itemName"].ToString();
                        if (dt.Rows[0]["itemAffiliMerchant"].ToString() != "")
                        {
                            DataTable dt2 = sqlcmd.getCommonData(" Merchant ", " * ", " MerchantID =" + dt.Rows[0]["itemAffiliMerchant"].ToString());
                            if (dt2.Rows.Count > 0)
                            {
                                itemAffiliMerchant.Text = dt2.Rows[0]["MerchantName"].ToString();
                            }
                             
                        }
                            
                        if (dt.Rows[0]["IsTrial"].ToString() != "")
                        {
                            if (bool.Parse(dt.Rows[0]["IsTrial"].ToString()) == true)
                            {
                                ItemsPrice.Text = "试用价格:</b><div><p><strong class=\"pxui-color-red\">￥" + dt.Rows[0]["itemTriPrice"].ToString() + "</strong> <del class=\"pxui-color-gray\">" + dt.Rows[0]["itemSalePrice"].ToString() + "</del></p></div>";
                            }
                            else 
                            {
                                ItemsPrice.Text = "销 售 价:</b><div><p><strong class=\"pxui-color-red\">￥" + dt.Rows[0]["itemSalePrice"].ToString() + "</strong> <del class=\"pxui-color-gray\">" + dt.Rows[0]["itemMarketPrice"].ToString() + "</del></p></div>";
                            }
                        }

                        else if (dt.Rows[0]["IsSeckill"].ToString() != "")
                        {
                            if (bool.Parse(dt.Rows[0]["IsSeckill"].ToString()) == true)
                            {
                                ItemsPrice.Text = "秒杀价格:</b><div><p><strong class=\"pxui-color-red\">￥" + dt.Rows[0]["itemSecPrice"].ToString() + "</strong> <del class=\"pxui-color-gray\">" + dt.Rows[0]["itemSalePrice"].ToString() + "</del></p></div>";
                            }
                            else
                            {
                                ItemsPrice.Text = "销 售 价:</b><div><p><strong class=\"pxui-color-red\">￥" + dt.Rows[0]["itemSalePrice"].ToString() + "</strong> <del class=\"pxui-color-gray\">" + dt.Rows[0]["itemMarketPrice"].ToString() + "</del></p></div>";
                            }
                        }
                        else
                        {
                            ItemsPrice.Text = "销 售 价:</b><div><p><strong class=\"pxui-color-red\">￥" + dt.Rows[0]["itemSalePrice"].ToString() + "</strong> <del class=\"pxui-color-gray\">" + dt.Rows[0]["itemMarketPrice"].ToString() + "</del></p></div>";
                        }
                        if (dt.Rows[0]["itemDescri"].ToString() != "")
                        {
                            itemDescri.Text = dt.Rows[0]["itemDescri"].ToString();
                        }
                        
                    }
                }
            }
        }
    }
}