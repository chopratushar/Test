using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterationApplication
{
    public partial class CookieInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie nameCookie = Request.Cookies["c_name"];
            lblName.Text = nameCookie.Value;

           lblAddress.Text = Request.Cookies["c_address"].Value;

            lblEmail.Text = Request.Cookies["c_email"].Value;
            lblPhoneNo.Text = Request.Cookies["c_phoneNo"].Value;
            lblDoB.Text = Request.Cookies["c_dob"].Value;
        }
    }
}