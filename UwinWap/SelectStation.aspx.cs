using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UwinWap
{
    public partial class SelectStation : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                    DataTable dt = sqlcmd.getCommonData(" uwinStation ", " * ", " 1=1 ");
                    if (dt.Rows.Count > 0)
                    {
                        this.StationRepeter.DataSource = dt.DefaultView;
                        this.StationRepeter.DataBind();
                    }
               
            }
        
        }

       
    }
}