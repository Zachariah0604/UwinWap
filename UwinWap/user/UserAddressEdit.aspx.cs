using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace UwinWap.user
{
    public partial class UserAddressEdit : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        UserAddress address = new UserAddress();
        static int UserId;
        static int addressid;
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


                    if (Request.QueryString["id"] != null)
                    {
                        addressid = int.Parse(Request.QueryString["id"].ToString());
                        DataTable Addressdt = sqlcmd.getCommonData("UserAddress", " * ", " id =" + addressid);
                        if (Addressdt.Rows.Count > 0)
                        {
                            UserId = int.Parse(Addressdt.Rows[0]["AffliUserID"].ToString());
                            this.ReceUser.Text = Addressdt.Rows[0]["ReceUser"].ToString();
                            this.ReceTele.Text = Addressdt.Rows[0]["ReceTele"].ToString();
                            string[] ReceArea = Addressdt.Rows[0]["ReceArea"].ToString().Split(' ');

                            this.ddlProvince.SelectedItem.Text = ReceArea[0];
                            this.ddlCity.SelectedItem.Text = ReceArea[1];
                            this.ddlVilliage.SelectedItem.Text = ReceArea[2];

                            this.ReceAddress.Text = Addressdt.Rows[0]["ReceAddress"].ToString();
                        }
                    }
                    else { Response.Write("<script>window.location='UserAddress.aspx';</script>"); }
                }
            }
        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            string provice = this.ddlProvince.SelectedItem.Text.ToString();
            string city = this.ddlCity.SelectedItem.ToString();
            string Villiage = this.ddlVilliage.SelectedItem.Text.ToString();
            string ReceUser = "'" + this.ReceUser.Text + "'";
            string ReceTele = "'" + this.ReceTele.Text + "'";
            string ReceArea = "'" + provice + "  " + city + "  " + Villiage + "'";
            string ReceAddress = "'" + this.ReceAddress.Text + "'";
            int AffliUserID = UserId;
            int AffliExpress = 0;

            int result = sqlcmd.CommonUpdate(" UserAddress ", " ReceUser=" + ReceUser + ",ReceTele=" + ReceTele + ",ReceArea=" + ReceArea + ",ReceAddress=" + ReceAddress, " id=" + addressid);

            if (result != 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('修改成功','UserAddress.aspx')", true);
            }
            else {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('发生未知错误')", true); }
        }
    }
}