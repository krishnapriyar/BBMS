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
    public partial class PaymentInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Amount.Text = Session["total"].ToString();
            id.Text = Session["custID"].ToString();
            orderid.Text = Session["orderID"].ToString();
            PayDate.Text = Session["date"].ToString();
            payTime.Text = Session["time"].ToString();


            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            string Select = "Select BloodOrder.collectionDate, BloodOrder.collectionTime, BloodOrderList.bloodType, BloodOrderList.orderQty from BloodOrder INNER JOIN BloodOrderList ON BloodOrderList.orderID=BloodOrder.orderID where BloodOrder.orderID=@orderID";
            SqlCommand cmdSelect = new SqlCommand(Select, con);

            cmdSelect.Parameters.AddWithValue("@orderID", orderid.Text);


            SqlDataReader dtrBloodOrderList = cmdSelect.ExecuteReader();

            string msg = "";


            if (dtrBloodOrderList.HasRows)
            {

                while (dtrBloodOrderList.Read())
                {


                    collectionDate.Text = "" + dtrBloodOrderList["collectionDate"].ToString() + "";
                    collectionTime.Text = "" + dtrBloodOrderList["collectionTime"].ToString() + "";

                    if (int.Parse(dtrBloodOrderList["orderQty"].ToString()) >= 1)
                    {
                        msg += dtrBloodOrderList["bloodType"].ToString() + "" + "<br>";
                        BloodType.Text = msg;
                    }










                }


            }
            con.Close();
        }
    }
}