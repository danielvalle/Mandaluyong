using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandaluyong
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string queryString = "SELECT * FROM tblUser";
            int userCheck = 0;

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbwebprog"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                try
                {     
                    while (reader.Read())
                    {
                        if(txtUsername.Text.Equals((string)reader["strUsername"]) || txtUsername.Text.Equals((string)reader["strUserEmailAddress"]))
                        {
                            if (txtPassword.Text.Equals((string)reader["strUserPassword"]))
                            {
                                Session["userFirstName"] = (string)reader["strUserFirstName"];
                                Session["userLastName"] = (string)reader["strUserLastName"];
                                Session["strUserType"] = reader["strUserType"];

                                userCheck = 1;
                                break;
                            }

                        }else userCheck = 0;
                        
                    }
                    connection.Close();

                    if (userCheck == 0)
                    {
                        lblErrorMessage.Text = "Invalid username/password.";
                    }
                    else
                    {
                        Response.Redirect("~/Default.aspx");
                    }

                }
                catch (Exception ex)
                {
                    
                }
            }
        }
    }
}