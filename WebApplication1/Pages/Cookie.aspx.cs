using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Pages
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClearCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("CookieMessage");
            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);
            lblCookieMessage.Text = "Cookie cleared!";
        }

        protected void btnGetCookie_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["CookieMessage"] != null)
            {
                lblCookieMessage.Text = Request.Cookies["CookieMessage"].Value;
            }
            else
            {
                lblCookieMessage.Text = "No cookie found!";
            }
        }
    }
}