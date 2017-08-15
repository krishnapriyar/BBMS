using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment
{
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            Total.Text = Session["total"].ToString();
            id.Text = Session["id"].ToString();
            orderid.Text = Session["orderID"].ToString();

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            string Select = "Select BloodOrderList.bloodType, BloodOrderList.orderQty, Payment.payDate, Payment.payTime from BloodOrderList INNER JOIN Payment ON Payment.orderID=BloodOrderList.orderID where Payment.orderID=@orderID";
            SqlCommand cmdSelect = new SqlCommand(Select, con);

            cmdSelect.Parameters.AddWithValue("@orderID", orderid.Text);


            SqlDataReader dtrBloodOrderList = cmdSelect.ExecuteReader();

            string msg = "";
            string qty= "";


            if (dtrBloodOrderList.HasRows)
            {

                while (dtrBloodOrderList.Read())
                {


                    Date.Text = "" + dtrBloodOrderList["payDate"].ToString() + "";
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