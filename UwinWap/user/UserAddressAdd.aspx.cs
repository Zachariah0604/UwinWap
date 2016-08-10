using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace UwinWap.user
{
    public partial class UserAddressAdd : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        UserAddress address = new UserAddress();
        static int UserId;
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
                }
            }
        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            string provice = this.ddlProvince.SelectedItem.Text.ToString();
            string city = this.ddlCity.SelectedItem.ToString();
            string Villiage = this.ddlVilliage.SelectedItem.Text.ToString();
            string ReceUser = "'"+this.ReceUser.Text+"'";
            string ReceTele = "'" + this.ReceTele.Text + "'";
            string ReceArea = "'"+provice + "  " + city + "  " + Villiage+"'";
            string ReceAddress = "'" + this.ReceAddress.Text + "'";
            int AffliUserID = UserId;
            int AffliExpress = 0;

            int result = sqlcmd.CommonInsert(" UserAddress ", " AffliUserID,AffliExpress,ReceUser,ReceTele,ReceArea,ReceAddress", AffliUserID + "," + AffliExpress + "," + ReceUser + "," + ReceTele + "," + ReceArea + "," + ReceAddress);

            if (result != 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('添加成功','UserAddress.aspx')", true);
            }
            else {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('发生未知错误')", true);
            }
        }
    }
}