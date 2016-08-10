using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap
{
    public partial class ItemsList : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        string condi = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["condi"] != null)
                {
                    string temp = Server.UrlDecode(Request.QueryString["condi"].ToString());
                    condi = " " + temp + "  order by itemsID desc";
                }
                else
                    condi = " 1=1 order by itemsID desc";
                ItemsListRepeterBind();
            }
        }
        private void ItemsListRepeterBind()
        {

            DataSet ds = new DataSet();
            ds = sqlcmd.PageIndex(" Items ", "*", condi);
            this.PageInfo.InnerHtml = PageIndex.GetPageNum(ds, itemsListRepeter, 10);

            itemsListRepeter.DataBind();
        }

        protected void ItemsSecKillbtn_Click(object sender, EventArgs e)
        {
            condi = " IsSeckill=1 order by itemsID desc";
            ItemsListRepeterBind();
        }

        protected void ItemsTrialbtn_Click(object sender, EventArgs e)
        {
            condi = " IsTrial=1 order by itemsID desc";
            ItemsListRepeterBind();
        }

        protected void ItemsPricebtn_Click(object sender, EventArgs e)
        {
            condi = " 1=1 order by itemSalePrice desc";
            ItemsListRepeterBind();
        }

        protected void ItemsSaleNumbtn_Click(object sender, EventArgs e)
        {
            condi = " 1=1 order by itemSaleNum desc";
            ItemsListRepeterBind();
        }

        protected void ItemsNewbtn_Click(object sender, EventArgs e)
        {
            condi = " 1=1 order by itemsID desc";
            ItemsListRepeterBind();
        }
    }
}