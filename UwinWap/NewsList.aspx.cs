using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace UwinWap
{
    public partial class News : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();

        string condi = " 1=1 order by NewsId desc";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // ArticleTypeRepeterBind();
                if (Request.QueryString["Typeid"] == null)
                {
                   
                    NewsListRepeterBind();
                }
                else {
                    int Typeid = int.Parse(Request.QueryString["Typeid"].ToString());
                    condi = " TypeId =" + Typeid + " order by NewsId desc";
                    NewsListRepeterBind();
                }
               
                
            }
        }
        private void NewsListRepeterBind()
        {
          
            DataSet ds = new DataSet();
            ds = sqlcmd.PageIndex(" Article ", "*", condi);
            this.PageInfo.InnerHtml = PageIndex.GetPageNum(ds, NewsListRepeter, 10);

            NewsListRepeter.DataBind();
        }

        //private void ArticleTypeRepeterBind()
        //{
        //    DataTable dt = sqlcmd.getCommonData(" ArticleType ", " top 3 * "," 1=1");
        //    if (dt.Rows.Count > 0)
        //    {
        //        this.ArticleTypeRepeter.DataSource = dt.DefaultView;
        //        this.ArticleTypeRepeter.DataBind();
        //    }
        //}

        protected string SetTypeName(string Typeid)
        {
            DataTable dt = sqlcmd.getCommonData(" ArticleType ", " * ", " Typeid=" + Typeid);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["TypeName"].ToString();
            }
            else
                return null;
        }
    }
}