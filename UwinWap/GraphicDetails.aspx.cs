using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace UwinWap
{
    public partial class GraphicDetails : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["itemsID"] == null)
                    Response.Redirect("ItemsList");
                else
                {
                    int itemsID = int.Parse(Request.QueryString["itemsID"].ToString());
                    DataTable dt = sqlcmd.getCommonData("Items", " itemContent ", " itemsID=" + itemsID);
                    if (dt.Rows.Count > 0)
                    {
                        itemContent.Text = dt.Rows[0]["itemContent"].ToString();
                    }
                }
            }
        }
    }
}