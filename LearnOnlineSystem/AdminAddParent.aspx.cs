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
    public partial class AdminAddParent : System.Web.UI.Page
    {
        public static string parent_Name;


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = TextBox6.Text;
                string password = TextBox7.Text;
                string Email = TextBox5.Text;
                string name = TextBox1.Text; 
                string Telephone_Number = TextBox4.Text;
                string postcode = TextBox3.Text;
                string surename = TextBox2.Text; ;
                



                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT into parent (name,surename,postCode,Telephone_Number,email,username,password)values (@name,@surename,@postCode,@Telephone_Number,@email,@username,@password)");

                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@surename", surename);
                cmd.Parameters.AddWithValue("@postCode", postcode);
                cmd.Parameters.AddWithValue("@Telephone_Number", Telephone_Number);
                cmd.Parameters.AddWithValue("@email", Email);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
               



                cmd.Connection = conn;
                cmd.ExecuteNonQuery();

                conn.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Registration Complete." + "'); ", true);

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                



            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "Please Key in all details." + "'); ", true); //alert shown.
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                string Username = TextBox11.Text;
                string Password = TextBox12.Text;
                string FName = TextBox8.Text;
                string Gender = TextBox10.Text;
                string DOB = TextBox9.Text;
                int parentID = Convert.ToInt32(TextBox13.Text);
                





                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT into child (FName,DOB,Gender,Username,Password,parentID)values (@FName,@DOB,@Gender,@Username,@Password,@parentID)");

                cmd.Parameters.AddWithValue("@Fname", FName);
                cmd.Parameters.AddWithValue("@DOB", DOB);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Username", Username);
                cmd.Parameters.AddWithValue("@password", Password);
                cmd.Parameters.AddWithValue("@parentID", parentID);
                





                cmd.Connection = conn;
                cmd.ExecuteNonQuery();

                conn.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Registration Complete." + "'); ", true);

                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                


            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "Please Key in all details." + "'); ", true); //alert shown.
            }
        }

    }
}
    
