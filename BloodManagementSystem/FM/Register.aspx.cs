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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDonorSubmit_Click(object sender, EventArgs e)
        {
            //Boolean validUser = true;
            string donorName = txtDonorName.Text;
            string donorICNo = txtDonorICNo.Text;
            string donorContactNo = txtDonorContactNo.Text;
            string donorBloodType = ddlDonorBloodType.SelectedItem.Value;
            string donorEmail = txtDonorEmail.Text;
            String password = txtDonorPassword.Text;
            String cfmPassword = txtConfirmDonorPassword.Text;

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strCon);

            string strInsert = "Insert into Donor (donorName, donorIC, donorContact, bloodType, donorEmail, password ) Values (@donorName, @donorIC, @donorContactNo, @bloodType, @donorEmail, @password)";

            conn.Open();
            SqlCommand cmdInsert;
            cmdInsert = new SqlCommand(strInsert, conn);
            
            cmdInsert.Parameters.AddWithValue("@donorName", donorName);
            cmdInsert.Parameters.AddWithValue("@donorIC", donorICNo);
            cmdInsert.Parameters.AddWithValue("@donorContactNo", donorContactNo);
            cmdInsert.Parameters.AddWithValue("@bloodType", donorBloodType);
            cmdInsert.Parameters.AddWithValue("@donorEmail", donorEmail);
            cmdInsert.Parameters.AddWithValue("@password", password);
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/FM/Login.aspx");
        }
        protected void btnCustomerSubmit_Click(object sender, EventArgs e)
        {
            string custName = txtCustomerName.Text;
            string custContactNo = txtCustomerContactNo.Text;
            String custAddress = txtCustomerPassword.Text;
            string custAgencyType = ddlAgencyType.SelectedItem.Value;
            string custEmail = txtCustomerEmail.Text;
            string custDept = txtCustomerDepartment.Text;
            String password = txtCustomerPassword.Text;

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strCon);

            string strInsert = "Insert into Customer (custName, custContactNo, custAddress, agencyType, custEmail, custDept, password) Values (@custName, @custContactNo, @custAddress, @custAgencyType, @custEmail, @custDept, @password)";

            conn.Open();
            SqlCommand cmdInsert;
            cmdInsert = new SqlCommand(strInsert, conn);

            cmdInsert.Parameters.AddWithValue("@custName", custName);
            cmdInsert.Parameters.AddWithValue("@custContactNo", custContactNo);
            cmdInsert.Parameters.AddWithValue("@custAddress", custAddress);
            cmdInsert.Parameters.AddWithValue("@custAgencyType", custAgencyType);
            cmdInsert.Parameters.AddWithValue("@custEmail", custEmail);
            cmdInsert.Parameters.AddWithValue("@custDept", custDept);
            cmdInsert.Parameters.AddWithValue("@password", password);
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/FM/Login.aspx");
        }
        

        /*conn.Open();
        string strSelect = "Select * from Donor";

        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
        SqlDataReader dtrDonor = cmdSelect.ExecuteReader();
        while (dtrDonor.Read())
        {
            if (donorEmail.Equals(dtrDonor.GetString(6))) // change condition
            {
                validUser = false;
            }
        }
        if (validUser)
        {

        }
        conn.Close();*/
    }
}