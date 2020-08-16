using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterationApplication
{
    public partial class SessionInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = Session["s_name"].ToString();
            lblAddress.Text = Session["s_address"].ToString();
            lblEmail.Text = Session["s_email"].ToString();
            lblPhoneNo.Text = Session["s_phoneNo"].ToString();
            lblDoB.Text = Session["s_dob"].ToString();
        }
    }
}