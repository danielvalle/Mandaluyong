using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandaluyong
{
    public partial class MaintenanceAnnouncement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddAnnouncementButton_Click(object sender, EventArgs e)
        {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand("Insert INTO tblAnnouncement(strAnnouncementName, strAnnouncementDetail, dtAnnouncementDate) VALUES" +
                                                    "(@strAnnouncementName, @strAnnouncementDetail, @dtAnnouncementDate)", con);

                    da.InsertCommand.Parameters.Add("@strAnnouncementName", SqlDbType.NVarChar).Value = txtAnnouncementName.Text;
                    da.InsertCommand.Parameters.Add("@strAnnouncementDetail", SqlDbType.NVarChar).Value = txtAnnouncementDetail.Text;
                    da.InsertCommand.Parameters.Add("@dtAnnouncementDate", SqlDbType.NVarChar).Value = DateTime.Now.ToString("M/dd/yyy");

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