using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace AmbulanceSurveillance
{
    public partial class Index : System.Web.UI.Page
    {

        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "41RPkGFo79ycYOuS6QOQzQRofx3ZTA8lI2mhmqQb",
            BasePath = "https://sickbay-final-bb666.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);

            if (client != null)
            {

            }
        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            if (!login.Value.Equals("kapildev12@gmail.com") || !password.Value.Equals("123456"))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Email or Pasword')", true);
            }
            else
            {
                Session["login"] = true;
                Response.Redirect("Home.aspx");
            }
        }
    }
}