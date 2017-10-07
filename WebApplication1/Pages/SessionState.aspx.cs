using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Pages
{
    public partial class SessionState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionStateMessage"] != null)
            {
                lblSessionStateMessage.Text = Session["SessionStateMessage"].ToString();
            }
            else
            {
                lblSessionStateMessage.Text = "No session state found.";
            }
        }

        protected void btnRemoveSessionState_Click(object sender, EventArgs e)
        {
            Session.Remove("SessionStateMessage");
            Session.Remove("RandomSession");
            lblSessionStateMessage.Text = "Session removed";
        }
    }
}