using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandaluyong
{
    public partial class MaintenanceCityInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT strCityLogo, strCityBanner FROM tblCity;";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        CityLogo.ImageUrl = (String)reader["strCityLogo"];
                        CityBanner.ImageUrl = (String)reader["strCityBanner"];
                    }
                }   
                catch(Exception ex)
                {

                }
            }
        }

        protected void UploadLogoButton_Click(object sender, EventArgs e)
        {
            if (strCityLogoFileUpload.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(strCityLogoFileUpload.FileName);
                    strCityLogoFileUpload.SaveAs(Server.MapPath("~/Uploads/") + filename);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.UpdateCommand = new SqlCommand(@"Update [tblCity] Set strCityLogo = @strCityLogo Where intCityID = " + 1, con);


                    da.UpdateCommand.Parameters.Add("@strCityLogo", SqlDbType.NVarChar).Value = "Uploads/" + filename;

                    con.Open();
                    da.UpdateCommand.ExecuteNonQuery();
                    con.Close();

                    CityLogo.ImageUrl = "~/Uploads/" + filename;

                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void UploadBannerButton_Click(object sender, EventArgs e)
        {
            if (strCityBannerFileUpload.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(strCityBannerFileUpload.FileName);
                    strCityBannerFileUpload.SaveAs(Server.MapPath("~/Uploads/") + filename);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.UpdateCommand = new SqlCommand(@"Update [tblCity] Set strCityBanner = @strCityBanner Where intCityID = " + 1, con);

                    da.UpdateCommand.Parameters.Add("@strCityBanner", SqlDbType.NVarChar).Value = "Uploads/" + filename;

                    con.Open();
                    da.UpdateCommand.ExecuteNonQuery();
                    con.Close();

                    CityBanner.ImageUrl = "~/Uploads/" + filename;

                }
                catch (Exception ex)
                {

                }
            }
        }

    }
}