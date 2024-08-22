using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string cs = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            try
            {

                string query = "select * from Users where name = @Name and password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", nametxt.Text);
                cmd.Parameters.AddWithValue("@Password", passtxt.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                if (dt.Rows.Count > 0)
                {
                    Session["User"]=nametxt.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label1.Text = "Email or password is wrong";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
            finally
            {
                con.Close();
            }

        }

    }
}