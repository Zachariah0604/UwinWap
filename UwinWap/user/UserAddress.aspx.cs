using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap.user
{
    public partial class UserAddress : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        string condi;

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
                    DataTable dt = sqlcmd.getCommonData("Memeber", " userID ", " userName ='" + username + "'");
                    if (dt.Rows.Count > 0)
                    {
                        UserId = int.Parse(dt.Rows[0]["userID"].ToString());
                    }

                    UserAddressList();
                }

            }
        }
        private void UserAddressList()
        {
            condi = " AffliUserID=" + UserId;
            DataTable dt = sqlcmd.getCommonData(" UserAddress ", " * ", condi);
            this.UserAddressRepeter.DataSource = dt.DefaultView;
            this.UserAddressRepeter.DataBind();

            UserAddressRepeter.DataBind();
        }
        protected void AddAddress_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserAddressAdd.aspx");
        }

        protected void UserDelAddress_Click(object sender, EventArgs e)
        {

            for (int i = 0; i < UserAddressRepeter.Items.Count; i++)
            {

                Label lb = (Label)UserAddressRepeter.Items[i].FindControl("id");

                string condi = "where id=" + lb.Text;
                int result=sqlcmd.CommonDeleteColumns("dbo.UserAddress", condi);
                if (result != 0)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('删除成功')", true);
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('发生错误')", true);
                }
            }

               
           
            UserAddressList();
        }
    }
}