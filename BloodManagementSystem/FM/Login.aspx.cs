using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BloodManagementSystem.FM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int nUser = int.Parse(txtUserID.Text.Substring(0, 1));
            String user = "";
            switch (nUser)
            {
                case 1:
                    user = "Staff";
                    break;
                case 2:
                    user = "Customer";
                    break;
                case 3:
                    user = "Donor";
                    break;
                default:
                    user = "Invalid";
                    break;
            }

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strCon);

            if (user == "Staff")
            {
                conn.Open();
                string strSelect = "Select staffID, password, staffPosition from Staff";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader dtrLoginDetail = cmdSelect.ExecuteReader();
                while (dtrLoginDetail.Read())
                {
                    if (int.Parse(txtUserID.Text) == dtrLoginDetail.GetInt32(0))
                        if (txtPassword.Text == dtrLoginDetail.GetString(1))
                        {
                            Session["staffID"] = txtUserID.Text;
                            if ("Manager" == dtrLoginDetail.GetString(2))
                                Response.Redirect("~/KF/StaffMaintainance.aspx", false);
                            else
                                Response.Redirect("~/BloodManagement.aspx", false);
                        }
                }
                conn.Close();
            }
            else if (user == "Customer")
            {
                conn.Open();
                string strSelect = "Select custID, password from Customer";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader dtrLoginDetail = cmdSelect.ExecuteReader();
                while (dtrLoginDetail.Read())
                {
                    if (int.Parse(txtUserID.Text) == dtrLoginDetail.GetInt32(0))
                        if (txtPassword.Text == dtrLoginDetail.GetString(1))
                        {
                            Session["CustID"] = txtUserID.Text;
                            Response.Redirect("~/San/Booking.aspx", false);
                        }
                }
                conn.Close();
            }
            else if (user == "Donor")
            {
                conn.Open();
                string strSelect = "Select donorID, password from Donor";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
                SqlDataReader dtrLoginDetail = cmdSelect.ExecuteReader();
                while (dtrLoginDetail.Read())
                {
                    if (int.Parse(txtUserID.Text) == dtrLoginDetail.GetInt32(0))
                        if (txtPassword.Text == dtrLoginDetail.GetString(1))
                        {
                            Session["DonorID"] = txtUserID.Text;
                            Response.Redirect("~/DonationMenu.aspx", false);
                        }
                }
                conn.Close();
            }
            else if (user == "Invalid")
            {

            }

        }

       
    }
}