using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class Login_page : System.Web.UI.Page
    {

        public static string child_username;

        static string name;
        static string Childname;
        public static string boxid;
        static string parentId;
         


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Create connection to link database

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            //command that allow to select data from table matching with specific textbox
            SqlCommand comm = new SqlCommand(" SELECT * from parent WHERE parent_id = '" + TextBox3.Text + "' AND password = '" + TextBox4.Text + "'", conn);



            SqlDataReader dt;

            dt = comm.ExecuteReader();


            int count = 0;

            while (dt.Read())
            {
                count += 1;
            }
            if (count == 1)
            {
                //Redirect to another page if successful

                boxid = TextBox3.Text;
                Response.Redirect("Parenthome.aspx");

            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Create connection to link database
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            //command that allow to select data from table matching with specific textbox
            SqlCommand comm = new SqlCommand(" SELECT * from child WHERE child_id = '" + TextBox1.Text + "' AND Password = '" + TextBox2.Text + "'", conn);



            SqlDataReader dt;

            dt = comm.ExecuteReader();


            int count = 0;

            while (dt.Read())
            {
                count += 1;
            }

            if (count == 1)
            {
                //Redirect to another page if successful

                child_username = TextBox1.Text;
                Response.Redirect("ChildProfile.aspx");

            }
           
        }
       
        public static string getParentNameFromDatabase()
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

            conn.Open();
            string selectQuery = "SELECT * FROM parent WHERE parent_id =" + int.Parse(boxid);
            SqlCommand comm = new SqlCommand(selectQuery, conn );
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                 name = (mdr["name"].ToString());
               
            }
            
            conn.Close();

            return name;
        }

        public static int getParentIDFromDatabase()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();
            string selectQuery = "SELECT * FROM parent WHERE parent_id =" + int.Parse(boxid);
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                parentId = (mdr["parent_id"].ToString());

            }

            conn.Close();

            return int.Parse(parentId);
        }

        public static string getChildNameFromDatabase()
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

            conn.Open();
            string selectQuery = "SELECT * FROM child WHERE child_id =" + int.Parse(child_username);
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                Childname = (mdr["Username"].ToString());

            }

            conn.Close();

            return Childname;
        }

       

    }
}