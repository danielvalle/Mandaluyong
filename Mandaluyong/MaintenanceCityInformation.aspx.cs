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
            string queryString = "SELECT strCityImage FROM dbo.tblCity;";
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        Image1.ImageUrl = (String)reader["strCityImage"];
                    }
                }   
                catch(Exception ex)
                {

                }
}
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (strCityImageFileUpload.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(strCityImageFileUpload.FileName);
                    strCityImageFileUpload.SaveAs(Server.MapPath("~/Uploads/") + filename);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.UpdateCommand = new SqlCommand(@"Update [tblCity] Set strCityImage = @strCityImage Where intCityID = " + 1, con);


                    da.UpdateCommand.Parameters.Add("@strCityImage", SqlDbType.NVarChar).Value = "~/Uploads/" + filename;

                    con.Open();
                    da.UpdateCommand.ExecuteNonQuery();
                    con.Close();

                    

                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}