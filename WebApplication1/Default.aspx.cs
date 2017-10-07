using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string hiddenValue = hdnValue.Value;
                lblViewState.Text = ViewState["ViewStateExample"].ToString();
            }
            else
            {
                hdnValue.Value = "A secret message";
                ViewState["ViewStateExample"] = "A message about viewstate";
            }
            
        }

        protected void btnQueryString_Click(object sender, EventArgs e)
        {
            Response.Redirect(
                String.Format(
                "Pages/QueryString.aspx?Name={0}&Email={1}",
                txtName.Text,
                txtEmail.Text));
        }

        protected void btnCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("CookieMessage", txtCookieMessage.Text);
            cookie.Expires = DateTime.Now.AddMinutes(10);
            Response.Cookies.Add(cookie);
            Response.Redirect("Pages/Cookie.aspx");
        }

        protected void btnSessionState_Click(object sender, EventArgs e)
        {
            Session.Add("SessionStateMessage", txtSessionStateMessage.Text);
            Response.Redirect("Pages/SessionState.aspx");
        }

        protected void btnApplicationState_Click(object sender, EventArgs e)
        {
            Application.Add("ApplicationStateMessage", txtApplicationStateMessage.Text);
            Response.Redirect("Pages/ApplicationState.aspx");
        }
    }
}