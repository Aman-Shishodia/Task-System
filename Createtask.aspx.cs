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
    public partial class Createtask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        string cs = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                var query = "insert into tasks(task,description,date) values(@Title,@Description,@Datetime)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Title", titletxt.Text);
                cmd.Parameters.AddWithValue("@Description",desctxt.Text);
                cmd.Parameters.AddWithValue("@Datetime",dttxt.Text);
                
               if (con.State == System.Data.ConnectionState.Closed) {
                    con.Open();
                    int i = (int)cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        ViewState["msg"] = "Task inserted !!";
                        Response.Redirect("Alltasks.aspx");
                    }
                }
            }
            catch (Exception ex) {
            Label1.Text = ex.Message;
                Label1.Visible = true;
                Label1.ForeColor=System.Drawing.Color.Red;
            }
            finally {
            con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            titletxt.Text = "";
            desctxt.Text = "";
            dttxt.Text = "";
        }
    }
}