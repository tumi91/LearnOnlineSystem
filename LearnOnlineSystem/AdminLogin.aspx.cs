using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox3.Text == "Admin" && TextBox4.Text == "1234")
            {
                Response.Redirect("Adminhome.aspx");
            }
            else if (TextBox3.Text == null && TextBox4.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "Please Key in all details." + "'); ", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "wrong Username or Password !! ." + "'); ", true);
            }
        }
    }
}


              
