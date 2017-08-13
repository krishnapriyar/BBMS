using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BloodManagementSystem
{
    public partial class ConfirmDonation : System.Web.UI.Page
    {
        private static DateTime bookingDate;
        private static DateTime bookingTime;
        private static int donorID;
        private static int staffIDS;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) // to avoid reloading your control on postback
            {
                donorID = int.Parse(Session["donorID"].ToString());

                //Get donation time and date from previous page
                DropDownList ddlHours  = (DropDownList)PreviousPage.FindControl("ddlHours");
                DropDownList ddlMinutes  = (DropDownList)PreviousPage.FindControl("ddlMinutes");
                TextBox tbDate  = (TextBox)PreviousPage.FindControl("tbDate");

                bookingDate = DateTime.Parse(tbDate.Text);
                bookingTime = DateTime.Parse(ddlHours.SelectedValue + ":" + ddlMinutes.SelectedValue);
                lblTime.Text = bookingTime.ToShortTimeString();
                lblDate.Text = bookingDate.ToShortDateString();


                //Select all staff whose position is Nurse
                String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();
                String strSelect = "Select staffID, staffName from Staff where staffPosition = 'Nurse'";
                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader dtrNurse = cmdSelect.ExecuteReader();


                if (dtrNurse.HasRows)
                {
                    while (dtrNurse.Read())
                    {
                        int staffID = dtrNurse.GetInt32(0);

                        //Compare all donations the nurse is in charge for that day 
                        SqlConnection conn2 = new SqlConnection(strConn);
                        conn2.Open();
                        String strSelect2 = "Select donationTime from Donation where donationDate = @date AND staffID= @staff";
                        SqlCommand cmdSelect2 = new SqlCommand(strSelect2, conn2);
                        cmdSelect2.Parameters.AddWithValue("@date", bookingDate.ToString("MM/dd/yyyy"));
                        cmdSelect2.Parameters.AddWithValue("@staff", staffID);

                        SqlDataReader dtrDonation = cmdSelect2.ExecuteReader();


                        //Assign donation session if there is no time clash ( +/- 15 minutes)                
                        if (dtrDonation.HasRows)
                        {
                            while (dtrDonation.Read())
                            {
                                TimeSpan timeS = dtrDonation.GetTimeSpan(0);
                                DateTime time = DateTime.Parse(timeS.ToString());

                                if (bookingTime.Equals(time) || bookingTime.AddMinutes(15.00).Equals(time) || bookingTime.AddMinutes(-15.00).Equals(time))
                                {

                                }
                                else
                                {
                                    lblNurse.Text = dtrNurse.GetString(1);
                                    staffIDS = dtrNurse.GetInt32(0);
                                    break;
                                }

                            }
                        }
                        else
                        {
                            lblNurse.Text = dtrNurse.GetString(1);
                            staffIDS = dtrNurse.GetInt32(0);
                            break;
                        }


                        dtrDonation.Close();
                        conn2.Close();
                    } //closes while dtrnurse read
                } // closes if dtrnurse has rows
                else
                {
                    lblNurse.Text = "No nurse found. Refer to counter.";
                }

                dtrNurse.Close();
                conn.Close();

                lblVenue.Text = venueAssign();
            }
            

        } //closes Page_load

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //Response.Redirect("BookDonation.aspx");
        }

        private String venueAssign()
        {
            Random rnd = new Random();
            int floor = rnd.Next(1, 4);
            int room = rnd.Next(1, 10);
            int let = rnd.Next(0, 3);
            char block =(char) (rnd.Next(0, 5)+'A');
            String str= (char)block +""+ floor + "0" + room;

            return str;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //write to db
            insertDonationRecord(convertDTToTimeSpan(bookingTime),bookingDate,lblVenue.Text,0.0,donorID,staffIDS);
            Response.Redirect("DonationSummary.aspx");
        }

        protected void insertDonationRecord(TimeSpan donationTime, DateTime donationDate, String venue, Double unitOfBlood, int donorID, int staffID) {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            String strIns = "INSERT INTO Donation (donationTime, donationDate, venue, unitOfBlood, donorID, staffID) VALUES (@donationTime, @donationDate, @venue, @unitOfBlood, @donorID, @staffID); SELECT SCOPE_IDENTITY()";
            SqlCommand cmdIns = new SqlCommand(strIns, conn);
            cmdIns.Parameters.AddWithValue("@donationTime", donationTime);

            cmdIns.Parameters.AddWithValue("@donationDate", donationDate);
            cmdIns.Parameters.AddWithValue("@venue", venue);
            cmdIns.Parameters.AddWithValue("@unitOfBlood", unitOfBlood);
            cmdIns.Parameters.AddWithValue("@donorID", donorID);
            cmdIns.Parameters.AddWithValue("@staffID", staffID);

            Decimal donationID = (Decimal) cmdIns.ExecuteScalar();
            Session["donationID"] = Convert.ToInt32(donationID);
            conn.Close();
        }

        protected TimeSpan convertDTToTimeSpan(DateTime h) {

            TimeSpan ts = TimeSpan.Parse("" + "" + h.Hour + ":" + h.Minute);

            return ts;
        }




    }
}