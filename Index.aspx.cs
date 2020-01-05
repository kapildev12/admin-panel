using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbulanceSurveillance
{
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
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