using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookingSubSystem.models;
using Newtonsoft.Json;


namespace BookingSubSystem.Webforms.admin_forms
{
    public partial class Edit_services : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // HttpClient is used to send HTTP requests
                using (HttpClient client = new HttpClient())
                {
                    // Replace "api_endpoint" with the actual API endpoint
                    string apiUrl = "https://csms-rest-api.onrender.com/service/all";

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

                            RootObject rootObject = JsonConvert.DeserializeObject<RootObject>(responseData);
                            var servicesData = rootObject.services_data;

                            // Bind the data to a GridView or other controls
                            repeater.DataSource = servicesData;
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

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            // Get the values from the modal form fields
            if (!int.TryParse(serviceId.Text, out int serviceIdValue))
            {
                // Display an error message to the user
                Response.Write("Service ID must be a valid integer.");
                return; // Exit the method if the service ID is not valid
            }

            string category = this.category.Text;
            string description = this.description.Text;
            double price = double.Parse(this.price.Text);

            // Call the UpdateService method to update the service
            UpdateService(serviceIdValue, category, description, price);

            // Close the modal popup after saving changes
            ScriptManager.RegisterStartupScript(this, GetType(), "CloseModalScript", "$('#myModal').modal('hide');", true);
        }

        protected async void UpdateService(int serviceId, string category, string description, double price)
        {
            // Serialize the data into key-value pairs
            var formData = new Dictionary<string, string>
            {
                { "description", description },
                { "category", category },
                { "price", price.ToString() }
            };

            // Encode the form data
            var encodedFormData = new FormUrlEncodedContent(formData);

            // Construct the URL for the PATCH request
            string apiUrl = $"https://csms-rest-api.onrender.com/service/update/{serviceId}";

            string apiKey = "8BYkEfBA6O6donzWlSihBXox7C0sKR6b";

            // Create an instance of HttpClient
            using (HttpClient client = new HttpClient())
            {
                // Add any required headers (e.g., API key and Content-Type)
                client.DefaultRequestHeaders.Add("x-api-key", apiKey);

                try
                {
                    // Set the Content-Type header to application/x-www-form-urlencoded
                    encodedFormData.Headers.ContentType = new MediaTypeHeaderValue("application/x-www-form-urlencoded");

                    // Send the PATCH request with the serialized form data
                    HttpResponseMessage response = await client.PatchAsync(apiUrl, encodedFormData);

                    // Check if the request was successful
                    if (response.IsSuccessStatusCode)
                    {
                        // Read the response content
                        string responseData = await response.Content.ReadAsStringAsync();

                        // Deserialize the response JSON
                        var result = JsonConvert.DeserializeObject<dynamic>(responseData);

                        // Check if the update was successful
                        if (result != null && result.success != null)
                        {
                            // Display success message
                            //string message = result.success.message;
                            //ScriptManager.RegisterStartupScript(this, GetType(), "UpdateSuccess", $"alert('{message}'); location.reload(true);", true);

                        }
                        else
                        {
                            // Handle unsuccessful update
                            Response.Write("Failed to update service data.");
                        }
                    }
                    else
                    {
                        // Handle error response
                        Response.Write("Failed to update service data. HTTP Status Code: " + response.StatusCode);
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }

        protected async void DeleteService_Click(object sender, EventArgs e)
        {
            // Extract the service ID from the sender, assuming it's passed as a CommandArgument
            LinkButton deleteButton = (LinkButton)sender;
            int serviceId = Convert.ToInt32(deleteButton.Attributes["data-serviceid"]);

            // Call the DeleteService method with the extracted service ID
            await DeleteService(serviceId);
        }

        protected async Task DeleteService(int serviceId)
        {
            // Construct the URL for the DELETE request
            string apiUrl = $"https://csms-rest-api.onrender.com/service/delete/{serviceId}";

            string apiKey = "8BYkEfBA6O6donzWlSihBXox7C0sKR6b";

            // Create an instance of HttpClient
            using (HttpClient client = new HttpClient())
            {
                // Add any required headers (e.g., API key)
                client.DefaultRequestHeaders.Add("x-api-key", apiKey);

                try
                {
                    // Send the DELETE request
                    HttpResponseMessage response = await client.DeleteAsync(apiUrl);

                    // Check if the request was successful
                    if (response.IsSuccessStatusCode)
                    {
                        // Display success message or perform any other actions as needed
                        //string script = "alert('Service deleted successfully.'); location.reload(true);";
                        //ScriptManager.RegisterStartupScript(this, GetType(), "DeleteSuccess", script, true);
                    }
                    else
                    {
                        // Handle error response
                        Response.Write("Failed to delete service. HTTP Status Code: " + response.StatusCode);
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

    public static class HttpClientExtensions
    {
        public static Task<HttpResponseMessage> PatchAsync(this HttpClient client, string requestUri, HttpContent content)
        {
            var request = new HttpRequestMessage(new HttpMethod("PATCH"), requestUri)
            {
                Content = content
            };

            return client.SendAsync(request);
        }
    }

}