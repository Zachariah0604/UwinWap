using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Resources;
using System.IO;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Web.Security;
using System.Security.Cryptography;
using System.Collections.Specialized;
using System.Web.UI.HtmlControls;
using System.Text;
namespace UwinWap
{
    public partial class index : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected static string isseckill = "";
        protected static string istrial = "";
        protected static string Brandlk;
        protected string itemAffiliSubType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                itemAffiliSubType = Server.UrlEncode("itemAffiliSubType=");
                if (Request.QueryString["stationid"] == null)
                {
                    DataTable dt = sqlcmd.getCommonData("WapAD ", " * ", " ADAffliStation=1");
                    if (dt.Rows.Count > 0)
                    {
                        banner.Attributes.Add("src", "http://139.129.201.126:88//FileUpload/Images/AD/" + dt.Rows[0]["ADImge"]);
                        banner.Attributes.Add("height", "120px;");
                        bannerlink.Attributes.Add("href", "http://" + dt.Rows[0]["ADlink"]);
                    }
                }

                else {
                    Session["StationId"] = Request.QueryString["stationid"].ToString();
                    DataTable dt = sqlcmd.getCommonData("WapAD ", " * ", " ADAffliStation=" + Session["StationId"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        banner.Attributes.Add("src", "http://139.129.201.126:88//FileUpload/Images/AD/" + dt.Rows[0]["ADImge"]);
                        banner.Attributes.Add("height", "120px;");
                        bannerlink.Attributes.Add("href", "http://" + dt.Rows[0]["ADlink"]);
                    }
                }
                isseckill = Server.UrlEncode("IsSeckill=1");
                istrial = Server.UrlEncode("IsTrial=1");
                Brandlk = Server.UrlEncode("itemAffiliBrand=");
                

                ItemsTypeBind();
                ItemsNew2RepeterBind();
                New3to5RepeterBind();
                BrandRepeterBind();
            }
        }
        private void ItemsTypeBind()
        {
            
            DataTable dt = sqlcmd.getCommonData(" ItemsParType ", " * ", " 1=1");

            if (dt.Rows.Count > 0)
            {
                this.ItemsParTypeRepeter.DataSource = dt.DefaultView;
                this.ItemsParTypeRepeter.DataBind();
            }
             
        }

        private void ItemsNew2RepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData(" Items ", " top 2 * ", " 1=1 order by ItemsID desc");
            if (dt.Rows.Count > 0)
            {

                this.New2Repeter.DataSource = dt.DefaultView;
                this.New2Repeter.DataBind();
            }
        }
        private void BrandRepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData(" ItemBrand ", "  * ", " 1=1");
            if (dt.Rows.Count > 0)
            {

                this.BrandRepeter.DataSource = dt.DefaultView;
                this.BrandRepeter.DataBind();
            }
        }
        private void New3to5RepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData("  (select top 5 *  from Items order by itemsID desc)a  ", " top 3 * ", " 1=1  order by a.itemsID asc");
            if (dt.Rows.Count > 0)
            {

                this.New3to5Repeter.DataSource = dt.DefaultView;
                this.New3to5Repeter.DataBind();
            }
        }
        protected void ItemsParTypeRepeter_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlControl StyleOne = e.Item.FindControl("StyleOne") as HtmlControl;
                HtmlControl StyleTwo = e.Item.FindControl("StyleTwo") as HtmlControl;
                Repeater rep = e.Item.FindControl("ItemsSubTypeRepeter") as Repeater;
                DataRowView rowv = (DataRowView)e.Item.DataItem;
                int typeid = Convert.ToInt32(rowv["ParTypeID"]);
                if (typeid % 2 == 0)
                {
                    StyleOne.Style.Add("display", "none");
                    StyleTwo.Style.Add("display", "block");
                }
                else
                {
                     StyleTwo.Style.Add("display", "none");
                    StyleOne.Style.Add("display", "block");
                }
                DataTable dt = sqlcmd.getCommonData(" ItmesSubType ", " top 3 * ", " ParentID=" + typeid);
                if (dt.Rows.Count > 0)
                {
                    rep.DataSource = dt.DefaultView;
                    rep.DataBind();
                }
            }
        }
       

    }
}