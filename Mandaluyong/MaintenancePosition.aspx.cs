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
    public partial class MaintenancePosition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString);

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                SqlDataAdapter da = new SqlDataAdapter();
                da.InsertCommand = new SqlCommand("Insert INTO tblPosition(strPositionName) VALUES" +
                                                "(@strPositionName)", con);

                da.InsertCommand.Parameters.Add("@strPositionName", SqlDbType.NVarChar).Value = txtPositionName.Text;

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