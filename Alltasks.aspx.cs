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
    public partial class Alltasks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            loaddata();
        }

        string cs = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
        void loaddata()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tasks";
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(query,con);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                GridViewalltasks.DataSource = dt;
                GridViewalltasks.DataBind();
            }
            catch (Exception ex) { 
            Response.Redirect(ex.Message);
            }

        }

        protected void Deletebtn_Click(object sender, EventArgs e)
        {
            
        }
    }
}