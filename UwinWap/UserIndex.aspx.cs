using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
namespace UwinWap
{

    public partial class UserIndex : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected string userNameUrl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_Name"] == null)
                {
                    userName.Text = "点击登录";
                    userNameUrl = "UserLogin.aspx";

                }
                else
                {
                    string UserName = Session["User_Name"].ToString();
                    userName.Text = UserName;
                    userNameUrl = "#";
                }
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('注销成功','inedx.aspx')", true);
        }

        protected void FeedBackBtn_Click(object sender, EventArgs e)
        {


            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('暂未开放','UserIndex.aspx')", true);
        }
    }
}