using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap.user
{
    public partial class UserOrder : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        int UserId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_Name"] == null)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('对不起，您还未登录','../UserLogin.aspx')", true);
                 
                }
                else
                {
                    string username = Session["User_Name"].ToString();
                    DataTable dt = sqlcmd.getCommonData(" Memeber ", " * ", " userName='"+username+"'");
                    if (dt.Rows.Count > 0)
                    {
                        UserId = int.Parse(dt.Rows[0]["userID"].ToString());
                        DataTable orderDt = sqlcmd.getCommonData("Orders", " orderItemID,orderCount,orderCost,orderState ", " orderAffiUser=" + UserId);
                        this.UserOrderRepeter.DataSource = orderDt.DefaultView;
                        this.UserOrderRepeter.DataBind();
                    }
                    
                }
            }
        }

        protected string SetItemName(string ItemID)
        {
            DataTable itemDt = sqlcmd.getCommonData("Items", " itemName ", " itemsID=" + ItemID);
            string itemName = "";
            if (itemDt.Rows.Count > 0)
            {
                itemName= itemDt.Rows[0]["itemName"].ToString();
            }
            return itemName;
        }
        protected string SetItemsThumb(string ItemID)
        {
            DataTable itemDt = sqlcmd.getCommonData("Items", " itemThumbnail ", " itemsID=" + ItemID);
            string itemThumbnail = "";
            if (itemDt.Rows.Count > 0)
            {
                itemThumbnail = itemDt.Rows[0]["itemThumbnail"].ToString();
            }
            return itemThumbnail;
        }
        protected string SetStateName(string OrderStates)
        {

            if ("1" == OrderStates)
                return "待支付";
            if ("2" == OrderStates)
                return "已支付";
            if ("3" == OrderStates)
                return "备货中";
            if ("4" == OrderStates)
                return "已发货";
            if ("5" == OrderStates)
                return "已收货";
            if ("6" == OrderStates)
                return "申请退款";
            if ("7" == OrderStates)
                return "退款受理";
            if ("8" == OrderStates)
                return "已退款";
            else
                return null;


        }

        protected void UserDelOrder_Click(object sender, EventArgs e)
        {

        }
        protected void UserExp_Click(object sender, EventArgs e)
        {

        }
        protected void UserRe_Click(object sender, EventArgs e)
        {

        }

        protected void OrderState0_Click(object sender, EventArgs e)
        {

        }

        protected void OrderState1_Click(object sender, EventArgs e)
        {

        }

        protected void OrderState3_Click(object sender, EventArgs e)
        {

        }

        protected void OrderState5_Click(object sender, EventArgs e)
        {

        }

        protected void OrderState7_Click(object sender, EventArgs e)
        {

        }
    }
}