using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandaluyong
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["strUserType"] == null) Session["strUserType"] = 0;

            if ((int)HttpContext.Current.Session["strUserType"] == 1)
            {
                maintenance_dropdown.Visible = true;
            }

        }
    }
}