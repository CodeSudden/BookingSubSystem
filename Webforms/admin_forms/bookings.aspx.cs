using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using BookingSubSystem.models;


namespace BookingSubSystem.Webforms.admin_forms
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // HttpClient is used to send HTTP requests
                using (HttpClient client = new HttpClient())
                {
                    // Replace "api_endpoint" with the actual API endpoint
                    string apiUrl = "https://csms-rest-api.onrender.com/booking/all";

                    // Replace "your_api_key" with your actual API key
                    string apiKey = "8BYkEfBA6O6donzWlSihBXox7C0sKR6b";

                    // Add the x-api-key header to the request
                    client.DefaultRequestHeaders.Add("x-api-key", apiKey);

                    try
                    {
                        // Send a GET request to the API
                        HttpResponseMessage response = await client.GetAsync(apiUrl);

                        if (response.IsSuccessStatusCode)
                        {

                            // Read the response content as a string
                            string responseData = await response.Content.ReadAsStringAsync();
                            

                            // Deserialize the JSON response into a list of objects
                            RootObject data = JsonConvert.DeserializeObject<RootObject>(responseData);

                            // Bind the data to a GridView or other controls
                            repeater.DataSource = data.Success.booking_data;
                            repeater.DataBind();
                        }
                        else
                        {
                            // Handle error response
                            Response.Write("Failed to fetch data from the API.");
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            } 
        }
    }
}