using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace UwinWap
{
    public partial class Brand : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected static string Brandlk;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Brandlk = Server.UrlEncode("itemAffiliBrand=");
                BrandRepeterBind();
            }
        }

        private void BrandRepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData("ItemBrand"," * "," 1=1");
            if (dt.Rows.Count > 0)
            {
                this.BrandRepeter.DataSource = dt.DefaultView;
                this.BrandRepeter.DataBind();
            }
        }
    }
}