using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BloodManagementSystem.KF
{
    public partial class CreditCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["custID"].ToString();
            Label2.Text = Session["orderID"].ToString();
            total.Text = Session["total"].ToString();
            DateTime date = DateTime.Now;
            Date.Text = date.ToString("MM/dd/yyyy");

            Time.Text = date.ToString("hh:mm:ss");
            Session["date"] = Date.Text;
            Session["time"] = Time.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strCon);
            conn.Open();

            string Insert = "";

            Insert = "Insert into Payment(amount, payDate, payTime, orderID) Values (@amount, @payDate, @payTime, @orderID)";

            SqlCommand cmdInsert;
            cmdInsert = new SqlCommand(Insert, conn);

            cmdInsert.Parameters.AddWithValue("@amount", total.Text);
            cmdInsert.Parameters.AddWithValue("@payDate", Date.Text);
            cmdInsert.Parameters.AddWithValue("@payTime", Time.Text);
            cmdInsert.Parameters.AddWithValue("@orderID", Label2.Text);
            cmdInsert.ExecuteNonQuery();


            conn.Close();
            Response.Redirect("PaymentInformation.aspx");


        }
    }
    }
