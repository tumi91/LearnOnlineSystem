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
    public partial class ChildProfile : System.Web.UI.Page
    {

        static string parentName;
        static string childImage;
        static string img;
        static string AVG;

        protected void Page_Load(object sender, EventArgs e)
        {
            Child_Name.Text = Login_page.getChildNameFromDatabase();
            Parent_Name.Text = AssignParentNameIntoChildProfile();
            Image1.ImageUrl = SetImageProfile();
            

        }

        public static string AssignParentNameIntoChildProfile()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM parent INNER JOIN child ON parent.parent_id=child.parentID WHERE child.child_id='" + Login_page.child_username + "';";
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                parentName = (mdr["name"].ToString());

            }

            conn.Close();

            return parentName;
        }


        public string SetImageProfile()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM child INNER JOIN Pic ON Pic.child_id=child.child_id WHERE child.child_id='" + Login_page.child_username + "';";
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                childImage = (mdr["picProfile"].ToString());

                return childImage;
            }          
            
            else 
            {
                img = "image/imageProfile.jpg";

                return img;
            }

            
            

            
        }

        protected void Button_Test1(object sender, EventArgs e)
        {
            Response.Redirect("TestPage.aspx");
        }

        protected void Button_Test2(object sender, EventArgs e)
        {
            Response.Redirect("Test2.aspx");
        }

        protected void Button_Test3(object sender, EventArgs e)
        {
            Response.Redirect("Test3.aspx");
        }
    }


    }

