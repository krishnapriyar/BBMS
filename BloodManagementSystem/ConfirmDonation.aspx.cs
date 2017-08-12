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
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get donation time and date from previous page
            DropDownList ddlHours = (DropDownList) PreviousPage.FindControl("ddlHours");
            DropDownList ddlMinutes = (DropDownList)PreviousPage.FindControl("ddlMinutes");
            TextBox tbDate = (TextBox)PreviousPage.FindControl("tbDate");

            DateTime bookingDate = DateTime.Parse(tbDate.Text);
            DateTime bookingTime = DateTime.Parse(ddlHours.SelectedValue+":"+ddlMinutes.SelectedValue);
              = bookingTime.ToShortTimeString();
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
                while (dtrNurse.Read()) { 
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
                            break;
                        }

                    }
                  }
                  else
                  {
                        lblNurse.Text = dtrNurse.GetString(1);
                        break;
                  }


                    dtrDonation.Close();
                    conn2.Close();
                } //closes while dtrnurse read
            } // closes if dtrnurse has rows
            else
            {
                lblNurse.Text ="No nurse found. Refer to counter.";               
            }

            dtrNurse.Close();
            conn.Close();

            lblVenue.Text = venueAssign();

        } //closes Page_load

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //Response.Redirect("BookDonation.aspx");
        }

        private String venueAssign()
        {
            Random rnd = new Random((int)DateTime.Now.Ticks);
            int floor = rnd.Next(1, 4);
            int room = rnd.Next(1, 10);
            int let = rnd.Next(0, 3);
            char block =(char) (rnd.Next(0, 4)+'A');
            String str= (char)block +""+ floor + "0" + room;

            return str;
        }
    }
}