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
            try
            {
                FirebaseResponse driversInformation = await client.GetTaskAsync("DriversInformation/");
                Dictionary<String, Driver> driversDictionary = driversInformation.ResultAs<Dictionary<String, Driver>>();
                DriverRepeater.DataSource = driversDictionary.Values;
                DriverRepeater.DataBind();

                FirebaseResponse ridersInformation = await client.GetTaskAsync("RidersInformation/");
                Dictionary<String, Driver> ridersDictionary = ridersInformation.ResultAs<Dictionary<String, Driver>>();
                PatientRepeater.DataSource = ridersDictionary.Values;
                PatientRepeater.DataBind();
            }
            catch (Exception ignore)
            {
                //ignore
            }
        }
    }
}

