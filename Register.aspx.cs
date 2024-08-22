using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_System
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {

            string query = "insert into Users values(@Name,@Email,@Password,@Repassword)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name",nametxt.Text);
            cmd.Parameters.AddWithValue("@Email",emailtxt.Text);
            cmd.Parameters.AddWithValue("@Password",passtxt.Text);
            cmd.Parameters.AddWithValue("@Repassword",repasstxt.Text);

            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                    
            }
            }catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

        }
    }
}