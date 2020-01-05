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
    public partial class DriverList : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "41RPkGFo79ycYOuS6QOQzQRofx3ZTA8lI2mhmqQb",
            BasePath = "https://sickbay-final-bb666.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Index.aspx");
                return;
            }

            client = new FireSharp.FirebaseClient(config);

            if (client != null)
            {
                getList();

            }
        }

        private async void getList()
        {
            List<Driver> drivers = new List<Driver>();
            FirebaseResponse response = await client.GetTaskAsync("DriverUid");

            try
            {
                Dictionary<String, String> tokens = response.ResultAs<Dictionary<String, String>>();
                foreach (String token in tokens.Values)
                {
                    FirebaseResponse response1 = await client.GetTaskAsync("DriversInformation/" + token);
                    Driver driver = response1.ResultAs<Driver>();
                    drivers.Add(driver);
                }
                DriverRepeater.DataSource = drivers;
                DriverRepeater.DataBind();
            } 
            catch(Exception ignore)
            {

            }
        }
    }
}

