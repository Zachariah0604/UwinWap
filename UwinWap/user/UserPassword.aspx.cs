﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap.user
{
    public partial class UserPassword : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        string username = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                if (Session["User_Name"] != null)
                {
                    username = Session["User_Name"].ToString();
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('对不起，您还未登录','../UserLogin.aspx')", true);
                }
            }
            
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            DataTable dt = sqlcmd.getCommonData("Memeber ", " userPassword ", " userName = '" + username + "'");
            if (dt.Rows.Count > 0)
            {
                string userpwd = dt.Rows[0]["userPassword"].ToString();
                if (this.OldPassword.Text.ToString() != userpwd)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('原密码不正确，请重新输入')", true);
                }
                else
                {
                    int result = sqlcmd.CommonUpdate("Memeber ", " userPassword = " + this.userPassword.Text.ToString(), " userName = '" + username + "'");
                    if (result != 0)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('密码修改成功，请牢记您的新密码','../UserCenter.aspx')", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('发生错误，请重试')", true);
                    }
                }
            }
        }
    }
}