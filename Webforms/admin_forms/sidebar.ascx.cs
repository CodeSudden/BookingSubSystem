using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingSubSystem.Webforms.admin_forms
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the absolute path of the current request
            string currentPath = Request.Url.AbsolutePath;

            // Check if the current path matches any of the sidebar links
            if (currentPath.EndsWith("bookings.aspx"))
            {
                // Set the active state for the bookings link
                bookingsLink.CssClass = "active";
            }
            else if (currentPath.EndsWith("refunds.aspx"))
            {
                // Set the active state for the refunds link
                refundsLink.CssClass = "active";
            }
            else if (currentPath.EndsWith("cancellation.aspx"))
            {
                // Set the active state for the refunds link
                cancellationLink.CssClass = "active";
            }
            else if (currentPath.EndsWith("editservices.aspx"))
            {
                // Set the active state for the refunds link
                editservicesLink.CssClass = "active";
            }
            else if (currentPath.EndsWith("activity_log.aspx"))
            {
                // Set the active state for the refunds link
                activitylogLink.CssClass = "active";
            }
            else if (currentPath.EndsWith("mng_admns.aspx"))
            {
                // Set the active state for the refunds link
                manageadminLink.CssClass = "active";
            }
            // Add similar conditions for other links
        }
    }
}
