using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap.user
{
    public partial class UserInfo : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_Name"] != null)
                {
                    DataTable dt = sqlcmd.getCommonData("Memeber ", " * ", " userName ='" + Session["User_Name"].ToString() + "'");
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["userName"].ToString() != "")
                            this.userName.Text = dt.Rows[0]["userName"].ToString();
                        if (dt.Rows[0]["userSex"].ToString() != "")
                            this.userSex.Text = dt.Rows[0]["userSex"].ToString();
                        if (dt.Rows[0]["userEmail"].ToString() != "")
                            this.userEmail.Text = dt.Rows[0]["userEmail"].ToString();
                        if (dt.Rows[0]["userTele"].ToString() != "")
                            this.userTele.Text = dt.Rows[0]["userTele"].ToString();
                        if (dt.Rows[0]["userLevel"].ToString() != "")
                            this.userLevel.Text = dt.Rows[0]["userLevel"].ToString();
                        if (dt.Rows[0]["userVipLevel"].ToString() != "")
                            this.userVipLevel.Text = dt.Rows[0]["userVipLevel"].ToString();
                        if (dt.Rows[0]["userCreatime"].ToString() != "")
                            this.userCreatime.Text = dt.Rows[0]["userCreatime"].ToString();
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('对不起，您还未登录','../UserLogin.aspx')", true);
                }


            }
        }
    }
}