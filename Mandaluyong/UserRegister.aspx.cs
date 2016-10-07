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
    public partial class UserRegister : System.Web.UI.Page
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
                da.InsertCommand = new SqlCommand("Insert INTO tblUser(strUserFirstName, strUserLastName, strUserMiddleName, strUserEmailAddress, strUsername, strUserPassword, strUserType) VALUES" +
                                                "(@strUserFirstName, @strUserLastName, @strUserMiddleName, @strUserEmailAddress, @strUsername, @strUserPassword, 0)", con);

                da.InsertCommand.Parameters.Add("@strUserFirstName", SqlDbType.NVarChar).Value = txtFirstName.Text;
                da.InsertCommand.Parameters.Add("@strUserLastName", SqlDbType.NVarChar).Value = txtLastName.Text;
                da.InsertCommand.Parameters.Add("@strUserMiddleName", SqlDbType.NVarChar).Value = txtMiddleName.Text;
                da.InsertCommand.Parameters.Add("@strUserEmailAddress", SqlDbType.NVarChar).Value = txtEmail.Text;
                da.InsertCommand.Parameters.Add("@strUsername", SqlDbType.NVarChar).Value = txtUsername.Text;
                da.InsertCommand.Parameters.Add("@strUserPassword", SqlDbType.NVarChar).Value = txtPassword.Text;

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