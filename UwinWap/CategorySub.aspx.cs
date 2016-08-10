using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace UwinWap
{
    public partial class CategorySub : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        int parentid;
        protected string itemAffiliSubType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                itemAffiliSubType = Server.UrlEncode("itemAffiliSubType=");
                if (Request.QueryString["ParentID"] == null)
                    Response.Redirect("CategoryPar.aspx");
                else 
                {
                    parentid = int.Parse(Request.QueryString["ParentID"].ToString());
                    DataTable dt = sqlcmd.getCommonData(" ItmesSubType ", " * ", " ParentID="+parentid);
                    if (dt.Rows.Count > 0)
                    {
                        this.subTypeRepeter.DataSource = dt.DefaultView;
                        this.subTypeRepeter.DataBind();
                    }
                }
            }
        }
    }
}