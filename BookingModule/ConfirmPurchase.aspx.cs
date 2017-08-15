using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BookingModule
{
    public partial class ConfirmPurchase : System.Web.UI.Page
    {
        private static DateTime CollectDate;
        private static DateTime CollectTime;
        private static int custID;
        private static String[] bloodQuantity;
        private static String[] bloodType;
        private static String[] usage;
        protected void Page_Load(object sender, EventArgs e)
        {
            custID = int.Parse(Session["custID"].ToString());

            //get data from booking module
            if (!IsPostBack) {
            DropDownList ddlAP = (DropDownList)PreviousPage.FindControl("ddlAP");
            DropDownList ddlBP = (DropDownList)PreviousPage.FindControl("ddlBP");
            DropDownList ddlABP = (DropDownList)PreviousPage.FindControl("ddlABP");
            DropDownList ddlOP = (DropDownList)PreviousPage.FindControl("ddlOP");
            DropDownList ddlAN = (DropDownList)PreviousPage.FindControl("ddlAN");
            DropDownList ddlBN = (DropDownList)PreviousPage.FindControl("ddlBN");
            DropDownList ddlABN = (DropDownList)PreviousPage.FindControl("ddlABN");
            DropDownList ddlON = (DropDownList)PreviousPage.FindControl("ddlON");
            DropDownList ddlHH = (DropDownList)PreviousPage.FindControl("ddlHH");
            DropDownList ddlHrs = (DropDownList)PreviousPage.FindControl("ddlHrs");
            DropDownList ddlMins = (DropDownList)PreviousPage.FindControl("ddlMins");
            TextBox collectDate = (TextBox)PreviousPage.FindControl("txtCollectDate");

            DropDownList txtUsageAP = (DropDownList)PreviousPage.FindControl("txtUsageAP");
            DropDownList txtUsageBP = (DropDownList)PreviousPage.FindControl("txtUsageBP");
            DropDownList txtUsageABP = (DropDownList)PreviousPage.FindControl("txtUsageABP");
            DropDownList txtUsageOP = (DropDownList)PreviousPage.FindControl("txtUsageOP");
            DropDownList txtUsageAN = (DropDownList)PreviousPage.FindControl("txtUsageAN");
            DropDownList txtUsageBN = (DropDownList)PreviousPage.FindControl("txtUsageBN");
            DropDownList txtUsageABN = (DropDownList)PreviousPage.FindControl("txtUsageABN");
            DropDownList txtUsageON = (DropDownList)PreviousPage.FindControl("txtUsageON");
            DropDownList txtUsageHH = (DropDownList)PreviousPage.FindControl("txtUsageHH");

            CollectDate = DateTime.Parse(collectDate.Text);
            CollectTime = DateTime.Parse(ddlHrs.SelectedValue+ ":" +ddlMins.SelectedValue);

            bloodQuantity = new String[] { ddlAP.SelectedValue, ddlBP.SelectedValue, ddlABP.SelectedValue, ddlOP.SelectedValue
               , ddlAN.SelectedValue, ddlBN.SelectedValue, ddlABN.SelectedValue
                , ddlON.SelectedValue, ddlHH.SelectedValue };

            bloodType = new String[] { "A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-", "HH"};


            usage = new string[] {txtUsageAP.Text, txtUsageBP.Text, txtUsageABP.Text, txtUsageOP.Text,
                txtUsageAN.Text, txtUsageBN.Text, txtUsageABN.Text, txtUsageON.Text, txtUsageHH.Text};
                
                lblQAP.Text = ddlAP.SelectedValue;
                lblQBP.Text = ddlBP.SelectedValue;
                lblQABP.Text = ddlABP.SelectedValue;
                lblQOP.Text = ddlOP.SelectedValue;
                lblQAN.Text = ddlAN.SelectedValue;
                lblQBN.Text = ddlBN.SelectedValue;
                lblQABN.Text = ddlABN.SelectedValue;
                lblQON.Text = ddlON.SelectedValue;
                lblQHH.Text = ddlHH.SelectedValue;

                lblUAP.Text = txtUsageAP.Enabled != false ? txtUsageAP.Text : "Not Applicable";
                lblUBP.Text = txtUsageBP.Enabled != false ? txtUsageBP.Text : "Not Applicable";
                lblUABP.Text = txtUsageABP.Enabled != false ? txtUsageABP.Text : "Not Applicable";
                lblUOP.Text = txtUsageOP.Enabled != false ? txtUsageOP.Text : "Not Applicable";
                lblUAN.Text = txtUsageAN.Enabled != false ? txtUsageAN.Text : "Not Applicable";
                lblUBN.Text = txtUsageBN.Enabled != false ? txtUsageBN.Text : "Not Applicable";
                lblUABN.Text = txtUsageABN.Enabled != false ? txtUsageABN.Text : "Not Applicable";
                lblUON.Text = txtUsageON.Enabled != false ? txtUsageON.Text : "Not Applicable";
                lblUHH.Text = txtUsageHH.Enabled != false ? txtUsageHH.Text : "Not Applicable";
                

            lblDate.Text = CollectDate.ToShortDateString();
            lblTime.Text = CollectTime.ToShortTimeString();
            }
        }

        protected void btnCancelBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx");
        }

        protected void btnConfirmBook_Click(object sender, EventArgs e)
        {
            int orderID = Convert.ToInt32(insertBloodOrder(convertDTToTimeSpan(CollectTime), CollectDate, custID));

            int[] bQty = new int[9];
            for (int i = 0; i<bQty.Length; i++)
            {
                bQty[i] = int.Parse(bloodQuantity[i]);
            }

            insertBOList(bloodType, orderID, bQty, usage);


        }

        protected Decimal insertBloodOrder(TimeSpan collectionTime, DateTime collectionDate, int custID)
        {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            String strIns = "INSERT INTO BloodOrder (collectionTime, collectionDate, custID) VALUES (@collectionTime, @colectionDate, @custID) ;SELECT SCOPE_IDENTITY()";
            SqlCommand cmdIns = new SqlCommand(strIns, conn);
            

            cmdIns.Parameters.AddWithValue("@collectionTime", collectionTime);
            cmdIns.Parameters.AddWithValue("@colectionDate", collectionDate);
            cmdIns.Parameters.AddWithValue("@custID", custID);

            Decimal orderID = (Decimal)cmdIns.ExecuteScalar();
            Session["orderID"] = Convert.ToInt32("orderID");
            conn.Close();

            return orderID;
        }

        protected void insertBOList(String[] bloodType, int orderID, int[] orderQty, String[] usage)
        {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            for (int i = 0; i < orderQty.Length; i++)
            {
                if (orderQty[i] != 0)
                {
                    SqlConnection conn = new SqlConnection(strConn);
                    conn.Open();
                    String strIns = "INSERT INTO BloodOrderList (bloodType, orderID, orderQty, usage) VALUES (@bloodType, @orderID, @orderQty, @usage) ;SELECT SCOPE_IDENTITY()";
                    SqlCommand cmdIns = new SqlCommand(strIns, conn);


                    cmdIns.Parameters.AddWithValue("@bloodType", bloodType[i]);
                    cmdIns.Parameters.AddWithValue("@orderID", orderID);
                    cmdIns.Parameters.AddWithValue("@orderQty", orderQty[i]);
                    cmdIns.Parameters.AddWithValue("@usage", usage[i]);


                    cmdIns.ExecuteNonQuery();
                    conn.Close();
                }
            }

          
        }
        protected TimeSpan convertDTToTimeSpan(DateTime h)
        {

            TimeSpan ts = TimeSpan.Parse("" + "" + h.Hour + ":" + h.Minute);

            return ts;
        }

        protected void txtUsageAP_TextChanged(object sender, EventArgs e)
        {

        }
    }
}