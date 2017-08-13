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

            // Get donorID from current login
            int donorID = int.Parse(Session["donorID"].ToString());
            cmdSelect.Parameters.AddWithValue("@donorID", donorID);
            
            SqlDataReader dtrProduct = cmdSelect.ExecuteReader();
            lblLastDonation.Text = "NA";
            lblEligibleDon.Text = DateTime.Now.Date.AddDays(1.0).ToString("dd/MM/yyyy");

            rgvDate.MinimumValue = DateTime.Now.Date.AddDays(1.0).ToString("d");
            //Check if donor has donated before
            if (dtrProduct.HasRows)
            {
                dtrProduct.Read();
                DateTime lastDonation = dtrProduct.GetDateTime(0);

                lblLastDonation.Text = lastDonation.ToString("dd/MM/yyyy");
                
                if (lastDonation <= DateTime.Now)
                {
                    int diffLast = DateTime.Now.Day - lastDonation.Day;
                    DateTime eligibleDonation = DateTime.Now.Date.AddDays(100 - diffLast);

                    if (diffLast < 100)
                    {
                        rgvDate.MinimumValue = eligibleDonation.Date.ToString("d");
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
                    //If the donor has already booked a donation for the future

                    lblEligibleDon.Text = lastDonation.ToString("dd/MM/yyyy");
                    lblNot.Text = "You already have an upcoming donation booked on "+ lblEligibleDon.Text+".";
                    dtrProduct.Read();
                    lblLastDonation.Text = dtrProduct.GetDateTime(0).ToString("dd/MM/yyyy");
                    tbDate.Enabled = false;
                    ddlHours.Enabled = false;
                    ddlMinutes.Enabled = false;
                    btnBook.Visible = false;
                    lblNot.Visible = true;
                    HyperLink2.Visible = true;
                    
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

        
    }
}