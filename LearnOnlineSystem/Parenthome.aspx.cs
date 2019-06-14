using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class Parenthome : System.Web.UI.Page
    {

        public static string ParentID;
        public static string ChildID;

        protected void Page_Load(object sender, EventArgs e)
        {

            Label19.Text = "Welcome " + " " + Login_page.getParentNameFromDatabase();
            if (GetDataFromGridView().Rows.Count == 0)
            {
                Label20.Text = "No Child Record Found!!";
            }
            else
            {
                GetDataFromGridView();
            }
           
            
        }


        public GridView GetDataFromGridView()
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from points where parent_id ='" + Login_page.boxid + "' AND Parent_Name = '" + Login_page.getParentNameFromDatabase() + "'", conn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();

            return GridView1;
        }

     
        

        
    }
}