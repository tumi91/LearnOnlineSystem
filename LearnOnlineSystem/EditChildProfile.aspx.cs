using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class EditChildProfile : System.Web.UI.Page
    {

        string child_id;
        string childName;
        string parent_id;
        string picProfile;
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "image/imageProFile.jpg";
        }

        protected void Button1_payment(object sender, EventArgs e)
        {

            try
            {



                FileUpload1.SaveAs(Server.MapPath("~/image/") + TextBox2.Text + ".jpg");
                Image1.ImageUrl = "image/" + TextBox2.Text + ".jpg";

                picProfile = "image/" + TextBox2.Text + ".jpg";
                parent_id = Login_page.boxid;
                child_id = GetChildID().ToString();
                Label1.Text = "Child Name:" + "  " + GetChildName();

                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT into Pic (child_id,parent_id,picProfile) values (@child_id,@parent_id,@picProfile)");

                cmd.Parameters.AddWithValue("@child_id", child_id);
                cmd.Parameters.AddWithValue("@parent_id", parent_id);
                cmd.Parameters.AddWithValue("@picProfile", picProfile);





                cmd.Connection = conn;
                cmd.ExecuteNonQuery();

                conn.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Profile Updated." + "'); ", true);

            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "Wrong Child ID Please Try Again" + "'); ", true); //alert shown.
            }
        }




        public int GetChildID()
        {

            
            


                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
                conn.Open();

                string selectQuery = "SELECT * FROM parent INNER JOIN child ON parent.parent_id=child.parentID WHERE parent.parent_id='" + Login_page.boxid + "' AND child_id = '" + TextBox2.Text + "';";
                SqlCommand comm = new SqlCommand(selectQuery, conn);
                SqlDataReader mdr = comm.ExecuteReader();
                if (mdr.Read())
                {
                    child_id = (mdr["child_id"].ToString());

                return int.Parse(child_id);
                }
     
                else {

                throw new ClientBillingException(string.Format("Unable to find a client by id {0}", child_id));

                }


        }

        public string GetChildName()
        {
            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM parent INNER JOIN child ON parent.parent_id=child.parentID WHERE child.parentID='" + Login_page.boxid + "' AND child_id = '" + GetChildID() + "';";
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                childName = (mdr["FName"].ToString());

            }


            return childName;

        }

        public class ClientBillingException : Exception
        {
            public ClientBillingException(string message)
               : base(message)
            {

            }
        }
    }
}