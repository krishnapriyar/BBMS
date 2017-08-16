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
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Total.Text = Session["total"].ToString()+".00";
            id.Text = Session["custID"].ToString();
            orderid.Text = Session["orderID"].ToString();

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            string Select = "Select BloodOrderList.bloodType, BloodOrderList.orderQty, Payment.payDate, Payment.payTime from BloodOrderList INNER JOIN Payment ON Payment.orderID=BloodOrderList.orderID where Payment.orderID=@orderID";
            SqlCommand cmdSelect = new SqlCommand(Select, con);

            cmdSelect.Parameters.AddWithValue("@orderID", orderid.Text);


            SqlDataReader dtrBloodOrderList = cmdSelect.ExecuteReader();

            string msg = "";
            string qty = "";


            if (dtrBloodOrderList.HasRows)
            {

                while(dtrBloodOrderList.Read())
                {
                    DateTime d = DateTime.Parse(dtrBloodOrderList["payDate"].ToString());

                    Date.Text = "" + d.ToString("dd/MM/yyyy") + "";
                    Time.Text = "" + dtrBloodOrderList["payTime"].ToString() + "";


                    msg += dtrBloodOrderList["bloodType"].ToString() + "" + "<br>";
                    type.Text = msg;
                    qty += "" + dtrBloodOrderList["orderQty"].ToString() + "<br>";
                    quantity.Text = qty;
                }


            }
            
        }
    }
}