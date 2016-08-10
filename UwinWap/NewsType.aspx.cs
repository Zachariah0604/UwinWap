using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace UwinWap
{
    public partial class NewsType : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        int parentid;
        protected string itemAffiliSubType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = sqlcmd.getCommonData(" ArticleType ", " * ", " 1=1 ");
                    if (dt.Rows.Count > 0)
                    {
                        this.NewsTypeRepeter.DataSource = dt.DefaultView;
                        this.NewsTypeRepeter.DataBind();
                    }
               
            }
        }
    }
}