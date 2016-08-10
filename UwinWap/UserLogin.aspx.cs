using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web.Security;
using System.Data.Sql;
using System.Data.SqlClient;

namespace UwinWap.User
{
    public partial class UserLogin : System.Web.UI.Page
    {
        DataConnect db = new DataConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void UserLoginBtn_Click(object sender, EventArgs e)
        {
            string username = UserName.Text.Trim();
            string pwd = Password.Text.Trim();
            string pwdmd51 = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");
            string pwdmd52 = FormsAuthentication.HashPasswordForStoringInConfigFile(pwdmd51, "MD5");
            int count = UserLoginPro(username, pwdmd52);
            if (count != 0)
            {
                Session["User_Name"] = username;
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "Showbo.Msg.alert('登录成功','UserCenter.aspx')", true);
                

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "test", "alert('请检查您的用户名或密码是否正确')", true);

            }
        }
        public int UserLoginPro(string username, string pwd)
        {
            string sql = "select count(*) from dbo.Memeber where userName=@username and userPassword=@pwd";
            SqlParameter[] pars = new SqlParameter[]{
            new SqlParameter("@username",username),
            new SqlParameter("@pwd",pwd)
            };
            object obj = db.SelectSqlReturnObject(sql, CommandType.Text, pars);
            if (obj != null)
            {
                return int.Parse(obj.ToString());
            }
            else
            {
                return 0;
            }


        }
    }
}