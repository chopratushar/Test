using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterationApplication
{
    public partial class RegisterationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            pnlCalendar.Visible = true;
        }

        protected void cldrDoB_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = cldrDoB.SelectedDate;

            tbDoB.Text = dt.ToString("MMM dd, yyyy");
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            cldrDoB.SelectedDate = new DateTime(Convert.ToInt32(ddlYear.SelectedValue), 1 , 1);
            cldrDoB.VisibleDate = new DateTime(Convert.ToInt32(ddlYear.SelectedValue), 1, 1);
        }
    }
}