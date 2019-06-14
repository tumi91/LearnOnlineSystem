using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class Test2 : System.Web.UI.Page
    {

        double point1;
        double point2;
        double point3;
        double point4;
        double point5;
        double point6;
        double point7;
        double point8;
        double point9;
        double point10;
        double totalResult;
        double totalResult2;
        static double totalPonits;
        static int child_id;
        string total_points;
        public static string ChildId;
        string test_date;
        string test_time;
        static string parentId;
        static string parentName;
        int parent_id;
        string Parent_Name;
        string child_Name;








        protected void Page_Load(object sender, EventArgs e)
        {
            test_date = DateTime.Now.ToString("dd.MM.yyy");
            DateTime dt = DateTime.Now;
            test_time = dt.ToShortTimeString();

            Label19.Text = "Welcome" + "  " + Login_page.getChildNameFromDatabase();
            lblUsername.Text = "  " + totalPonits.ToString();
            lbltime.Text = "Time :" + "  " + test_time;
            lbldate.Text = "Date :" + "  " + test_date;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                result1.Text = ".10";
            }
            else

            {
                result1.Text = "0";
                result1.ForeColor = System.Drawing.Color.Red;
            }
            if (DropDownList2.SelectedIndex == 2)
            {
                result2.Text = ".10";
            }
            else

            {
                result2.Text = "0";
                result2.ForeColor = System.Drawing.Color.Red;
            }

            if (DropDownList3.SelectedIndex == 2)
            {
                result3.Text = ".10";

            }
            else

            {
                result3.Text = "0";
                result3.ForeColor = System.Drawing.Color.Red;
            }
            if (DropDownList4.SelectedIndex == 2)
            {
                result4.Text = ".10";
            }
            else

            {
                result4.Text = "0";
                result4.ForeColor = System.Drawing.Color.Red;
            }
            if (DropDownList5.SelectedIndex == 1)
            {
                result5.Text = ".10";
            }
            else

            {
                result5.Text = "0";
                result5.ForeColor = System.Drawing.Color.Red;
            }

            point1 = Convert.ToDouble(result1.Text);
            point2 = Convert.ToDouble(result2.Text);
            point3 = Convert.ToDouble(result3.Text);
            point4 = Convert.ToDouble(result4.Text);
            point5 = Convert.ToDouble(result5.Text);

            totalResult = point1 + point2 + point3 + point4 + point5;

            total1.Text = totalResult.ToString();

            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false;
            DropDownList4.Enabled = false;
            DropDownList5.Enabled = false;
            totalPonits = Convert.ToDouble(total1.Text);
            lblUsername.Text = "  " + totalPonits.ToString();
            PointsColor();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "5")
            {
                txt6.Text = ".10";
            }
            else

            {
                txt6.Text = "0";
                txt6.ForeColor = System.Drawing.Color.Red;
            }
            if (TextBox2.Text == "14")
            {
                txt7.Text = ".10";
            }
            else

            {
                txt7.Text = "0";
                txt7.ForeColor = System.Drawing.Color.Red;
            }

            if (TextBox3.Text == "9")
            {
                txt8.Text = ".10";

            }
            else

            {
                txt8.Text = "0";
                txt8.ForeColor = System.Drawing.Color.Red;
            }
            if (TextBox4.Text == "11")
            {
                txt9.Text = ".10";
            }
            else

            {
                txt9.Text = "0";
                txt9.ForeColor = System.Drawing.Color.Red;
            }
            if (TextBox5.Text == "7")
            {
                txt10.Text = ".10";
            }
            else

            {
                txt10.Text = "0";
                txt10.ForeColor = System.Drawing.Color.Red;
            }

            point6 = Convert.ToDouble(txt6.Text);
            point7 = Convert.ToDouble(txt7.Text);
            point8 = Convert.ToDouble(txt8.Text);
            point9 = Convert.ToDouble(txt9.Text);
            point10 = Convert.ToDouble(txt10.Text);

            totalResult2 = point6 + point7 + point8 + point9 + point10;

            total2.Text = totalResult2.ToString();


            totalPonits = Convert.ToDouble(total1.Text) + Convert.ToDouble(total2.Text);
            lblUsername.Text = "  " + totalPonits.ToString();
            PointsColor();

            try
            {




                child_id = int.Parse(Login_page.child_username);
                total_points = totalPonits.ToString("P", CultureInfo.InvariantCulture);
                parent_id = GetParentIDFromChildTable();
                child_Name = Login_page.getChildNameFromDatabase();
                Parent_Name = GetParentNameFromPointsTable();


                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT into points (child_id,child_Name,test_date,test_time,total_points,parent_id,Parent_Name)values (@child_id,@child_Name,@test_date,@test_time,@total_points,@parent_id,@Parent_Name)");

                cmd.Parameters.AddWithValue("@child_id", child_id);
                cmd.Parameters.AddWithValue("@child_Name", child_Name);
                cmd.Parameters.AddWithValue("@test_date", test_date);
                cmd.Parameters.AddWithValue("@test_time", test_time);
                cmd.Parameters.AddWithValue("@total_points", total_points);
                cmd.Parameters.AddWithValue("@parent_id", parent_id);
                cmd.Parameters.AddWithValue("@Parent_Name", Parent_Name);






                cmd.Connection = conn;
                cmd.ExecuteNonQuery();

                conn.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Test is Completed Thank you " + Login_page.getChildNameFromDatabase() + "'); ", true);


                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;


            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert1", "alert('" + "Please Key in all details " + "'); ", true); //alert shown.
            }

        }

        public void PointsColor()
        {
            if (totalPonits == 0.5 || totalPonits == 0.4)
            {
                Label5.ForeColor = System.Drawing.Color.Yellow;
                lblUsername.ForeColor = System.Drawing.Color.Red;
                Label13.Text = " Good ";
            }
            else if (totalPonits == 0.6 || totalPonits == 0.7)
            {
                Label5.ForeColor = System.Drawing.Color.Yellow;
                lblUsername.ForeColor = System.Drawing.Color.GreenYellow;
                Label13.Text = "Very good ";
            }
            else if (totalPonits >= 0.8)
            {
                Label5.ForeColor = System.Drawing.Color.Yellow;
                lblUsername.ForeColor = System.Drawing.Color.GreenYellow;
                Label13.Text = " Excellent ";
            }
            else if (totalPonits <= 0.3)
            {
                Label5.ForeColor = System.Drawing.Color.Yellow;
                lblUsername.ForeColor = System.Drawing.Color.Red;
                Label13.Text = " Poor ";
            }
        }

        public int GetParentIDFromChildTable()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM child WHERE child_id =" + child_id;
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                parentId = (mdr["parentID"].ToString());

            }

            conn.Close();

            return int.Parse(parentId);
        }

        public static string GetParentNameFromPointsTable()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM parent INNER JOIN child ON parent.parent_id=child.parentID WHERE child.child_id='" + child_id + "';";
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                parentName = (mdr["name"].ToString());

            }

            conn.Close();

            return parentName;
        }

    }
}



