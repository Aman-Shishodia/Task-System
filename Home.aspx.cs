using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {

                if (Session["User"] != null)
                {
                var username = Session["User"].ToString();
                    TextBox1.Text = username;
                }
            }
            
        }
    }
}