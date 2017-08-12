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
    public partial class BookDonation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();

            String strSelect = "Select donationDate from Donation where donorID = @donorID ORDER BY donationDate DESC, donationTime DESC";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            // get from session
            cmdSelect.Parameters.AddWithValue("@donorID", "3001");


            SqlDataReader dtrProduct = cmdSelect.ExecuteReader();
            lblLastDonation.Text = "NA";
            lblEligibleDon.Text = "NA";

            if (dtrProduct.HasRows)
            {
                dtrProduct.Read();
                DateTime lastDonation = dtrProduct.GetDateTime(0);

                lblLastDonation.Text = lastDonation.ToString("dd/MM/yyyy");



                int diffLast = DateTime.Now.Day - lastDonation.Day;
                DateTime eligibleDonation = DateTime.Now.Date.AddDays(100 - diffLast);

                if (diffLast < 100) {

                    rgvDate.MinimumValue = eligibleDonation.ToString("d");
                    lblEligibleDon.Text = eligibleDonation.ToString("dd/MM/yyyy");
                    lblEligibleDon.Visible = true;


                }
                else
                {
                    rgvDate.MinimumValue = DateTime.Now.Date.AddDays(1.0).ToString("d");
                }
            }
            else
            {
                rgvDate.MinimumValue = DateTime.Now.Date.AddDays(1.0).ToString("d");
            }
            dtrProduct.Close();
            conn.Close();

            rgvDate.MaximumValue = DateTime.Now.Date.AddDays(100.0).ToString("d");
           
        }

        protected void tbDate_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}