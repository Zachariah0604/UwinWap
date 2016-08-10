using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap
{
    public partial class Article : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["NewsId"] != null)
                {
                    int newsId = int.Parse(Request.QueryString["NewsId"].ToString());
                    DataTable dt = sqlcmd.getCommonData(" Article ", " * ", " NewsId=" + newsId);
                    if (dt.Rows.Count > 0)
                    {
                        NewsTitle.Text = dt.Rows[0]["Title"].ToString();
                        CreateTime.Text = Convert.ToDateTime(dt.Rows[0]["CreateTime"]).ToString("yyyy-MM-dd");
                        Author.Text = dt.Rows[0]["Author"].ToString();
                        Url.Text = dt.Rows[0]["Url"].ToString();
                        Click.Text = dt.Rows[0]["Click"].ToString();
                        Content.Text = dt.Rows[0]["Content"].ToString();
                    }
                }
            }
            else
                Response.Redirect("NewsList.aspx");
        }
    }
}