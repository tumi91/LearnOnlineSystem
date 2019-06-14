using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class ViewChild : System.Web.UI.Page
    {
        String strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;


        protected void Page_load(object sender, EventArgs e)
        {
           
        }

      

       
    }
}