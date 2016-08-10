using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace UwinWap
{
    public partial class CategoryPar : System.Web.UI.Page
    {
        Sqlcmd sqlcmd = new Sqlcmd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                TypeRepeterBind();

        }

        private void TypeRepeterBind()
        {
            DataTable dt = sqlcmd.getCommonData(" ItemsParType ", " * ", " 1=1");
            if (dt.Rows.Count > 0)
            {
                this.parTypeRepeter.DataSource = dt.DefaultView;
                this.parTypeRepeter.DataBind();
            }
        }

        protected void parTypeRepeter_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater rep = e.Item.FindControl("subTypeRepeter") as Repeater;
                DataRowView rowv = (DataRowView)e.Item.DataItem;
                int typeid = Convert.ToInt32(rowv["ParTypeID"]);
                
                DataTable dt = sqlcmd.getCommonData(" ItmesSubType ", " top 2 * ", " ParentID=" + typeid);
                if (dt.Rows.Count > 0)
                {
                    rep.DataSource = dt.DefaultView;
                    rep.DataBind();
                }
            }
        }
    }
}