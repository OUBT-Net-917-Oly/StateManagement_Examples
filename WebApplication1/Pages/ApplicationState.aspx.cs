using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Pages
{
    public partial class ApplicationState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["ApplicationStateMessage"] != null)
            {
                lblApplicationStateMessage.Text = Application["ApplicationStateMessage"].ToString();
            }
            else
            {
                lblApplicationStateMessage.Text = "No session state found.";
            }
        }

        protected void btnRemoveApplicationState_Click(object sender, EventArgs e)
        {
            Application.Remove("ApplicationStateMessage");
            lblApplicationStateMessage.Text = "Session removed";
        }
    }
}