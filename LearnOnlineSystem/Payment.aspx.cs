using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class Payment : System.Web.UI.Page
    {
        static string AVG;
        string date;
        public static string Parent_name;
        public static string ChildrenQ;
        public static string Total_Amount;
        public static string payment_date;
        public static string inserted_amount;
        double Dollars;
        double Pound;
        double Euro;
        static int Parent_ID;


        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Mr:" + " " + Login_page.getParentNameFromDatabase();
            Label_QChild.Text = "Quantity Of Children : " + " " + GetChildQuantity().ToString();
            Label2.Text = "Total Amount :" + " " + GetTotalAmount().ToString() + " " + "£";
            date = DateTime.Now.ToString("dd.MM.yyy");
            LabelDate.Text = date;
            TextBox3.Text = CurrencyConvertor().ToString();


        }

        protected void Button1_payment(object sender, EventArgs e)
        {





            try
            {



                Parent_ID = Login_page.getParentIDFromDatabase();
                Parent_name = Label1.Text;
                ChildrenQ = GetChildQuantity().ToString();
                Total_Amount = GetTotalAmount().ToString();
                payment_date = LabelDate.Text;
                inserted_amount = TextBox3.Text;



                SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");

                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT into payment (Parent_ID,Parent_name,ChildrenQ,Total_Amount,payment_date,inserted_amount)values (@Parent_ID,@Parent_name,@ChildrenQ,@Total_Amount,@payment_date,@inserted_amount)");

                cmd.Parameters.AddWithValue("@Parent_ID", Parent_ID);
                cmd.Parameters.AddWithValue("@Parent_name", Parent_name);
                cmd.Parameters.AddWithValue("@ChildrenQ", ChildrenQ);
                cmd.Parameters.AddWithValue("@Total_Amount", Total_Amount);
                cmd.Parameters.AddWithValue("@payment_date", payment_date);
                cmd.Parameters.AddWithValue("@inserted_amount", inserted_amount);



                cmd.Connection = conn;
                cmd.ExecuteNonQuery();

                conn.Close();





                Response.Redirect("ConfirmationPayment.aspx");

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Thank you payment completed" + "'); ", true); //alert shown.





            }
            catch (FormatException)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "you already Paid " + "'); ", true); //alert shown.
            }



        }

        protected void Button2_payment(object sender, EventArgs e)
        {
            TextBox3.Text = CurrencyConvertor().ToString();

        }

        public static int GetChildQuantity()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT COUNT(parentID) FROM child WHERE parentID='" + Login_page.getParentIDFromDatabase() + "';";

            SqlCommand comm = new SqlCommand(selectQuery, conn);
            Int32 count = Convert.ToInt32(comm.ExecuteScalar());

            if (count > 0)
            {
                AVG = count.ToString();
            }
            else
            {

                AVG = "0";


            }

            conn.Close();

            return int.Parse(AVG);
        }

        public double GetTotalAmount()
        {
            double amount = 95.4;

            double result = amount * GetChildQuantity();

            return result;
        }


        public double CurrencyConvertor()
        {

            if (DropDownList1.SelectedIndex == 1)
            {
                Pound = double.Parse(TextBox2.Text);
                Euro = (Pound / 1.13);

                return Euro;
            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                Pound = double.Parse(TextBox2.Text);
                Dollars = (Pound / 1.30);

                return Dollars;
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                Pound = double.Parse(TextBox2.Text);


                return Pound;
            }

            return 0.0;

        }

    }
        }
       
   

