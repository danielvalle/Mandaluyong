using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Mandaluyong
{
    public partial class MaintenanceEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddEventButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter();

            try
            {
                da.InsertCommand = new SqlCommand("Insert INTO [tblEvent] (strEventName, strEventDetails, dtmEventStart, dtmEventEnd, strEventImagePath, intBoolIsActive) VALUES" +
                                                "(@strEventName, @strEventDetails, @dtmEventStart, @dtmEventEnd, @strEventImagePath, 1)", con);

                da.InsertCommand.Parameters.Add("@strEventName", SqlDbType.NVarChar).Value = strEventNameTextBox.Text;
                da.InsertCommand.Parameters.Add("@strEventDetails", SqlDbType.NVarChar).Value = strEventDescTextBox.Text;
                da.InsertCommand.Parameters.Add("@dtmEventStart", SqlDbType.NVarChar).Value = dtmEventStart.Text;
                da.InsertCommand.Parameters.Add("@dtmEventEnd", SqlDbType.NVarChar).Value = dtmEventEnd.Text;

                if (EventImageFileUpload.HasFile)
                {

                    string filename = Path.GetFileName(EventImageFileUpload.FileName);
                    EventImageFileUpload.SaveAs(Server.MapPath("~/Uploads/") + filename);

                    da.InsertCommand.Parameters.Add("@strEventImagePath", SqlDbType.NVarChar).Value = "Uploads/" + filename;

                }else da.InsertCommand.Parameters.Add("@strEventImagePath", SqlDbType.NVarChar).Value = null;

                con.Open();
                da.InsertCommand.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

            }

            Response.Redirect(Request.RawUrl);
        }
    }
}