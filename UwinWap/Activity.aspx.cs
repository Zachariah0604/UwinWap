using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace UwinWap
{
    public partial class Activity : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ActivityListRepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData("Activity", " * ", " 1=1");
            if (dt.Rows.Count > 0)
            {
                this.ActivityListRepeter.DataSource = dt.DefaultView;
                this.ActivityListRepeter.DataBind();
            }
        }
    }
}