using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnOnlineSystem
{
    public partial class ConfirmationPayment : System.Web.UI.Page
    {

        static string paymentId;
        double resultD;
        double result ;
        protected void Page_Load(object sender, EventArgs e)
        {
            result = double.Parse(Payment.Total_Amount);
            Label1.Text = Payment.payment_date;
            Label2.Text = GetPaymentIDFromDatabaseTable().ToString();
            Label3.Text = Payment.Total_Amount;
            Label4.Text = Payment.ChildrenQ;
            Label5.Text = Payment.Total_Amount;
            Label6.Text = "%20";
            Label7.Text = Special().ToString();
            Label8.Text = Payment.Parent_name;
        }

        public int GetPaymentIDFromDatabaseTable()
        {

            SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tumi\source\repos\LearnOnlineSystem\LearnOnlineSystem\App_Data\Learn_Online_System.mdf; Integrated Security = True");
            conn.Open();

            string selectQuery = "SELECT * FROM payment WHERE Parent_ID =" + Login_page.getParentIDFromDatabase();
            SqlCommand comm = new SqlCommand(selectQuery, conn);
            SqlDataReader mdr = comm.ExecuteReader();
            if (mdr.Read())
            {
                paymentId = (mdr["payment_id"].ToString());

            }

            conn.Close();

            return int.Parse(paymentId);
        }

        public double Special()
        {
            resultD = (result - 19);
            return resultD;
        }
    }
}