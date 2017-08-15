using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BloodManagement
{
    public partial class AssignNurse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                setDdlSearch();
            }
            
        }
       
        protected void getDateList(DropDownList ddl)
        {
            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            SqlDataReader dtrDate;
            conn.Open();

            String strSelect = "Select DISTINCT donationDate from Donation";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            dtrDate = cmdSelect.ExecuteReader();


            if (dtrDate.HasRows)
            {
              
                while (dtrDate.Read())
                {
                    ListItem dateList = new ListItem();
                    DateTime donationDate = dtrDate.GetDateTime(0);
                    dateList.Text = donationDate.ToString("dd/MM/yyyy");
                    
                    ddl.Items.Add(dateList);
                }
                
            }
            else
            {
                lblMessage.Text = "No Record in Date List!";
            }

            conn.Close();
            dtrDate.Close();

        }

        protected void getDonorList( DropDownList ddl)
        {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            SqlDataReader dtrDonor;
            conn.Open();

            String strSelect = "Select DISTINCT donorName from Donor";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            dtrDonor = cmdSelect.ExecuteReader();


            if (dtrDonor.HasRows)               
            {
                
                while (dtrDonor.Read())
                {
                    String donorName = dtrDonor.GetString(0);
                    
                    ddl.Items.Add(new ListItem(donorName, donorName));
                    
                }
            }
            else
            {
                lblMessage.Text = "No Record in Donor List!";
            }

            conn.Close();
            dtrDonor.Close();

        }

        protected void getStaffList(DropDownList ddl)
        {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            SqlDataReader dtrStaff;
            conn.Open();

            String strSelect = "Select DISTINCT staffName from Staff";

            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            dtrStaff = cmdSelect.ExecuteReader();


            if (dtrStaff.HasRows)
               
            {
                
                while (dtrStaff.Read())
                {
                    String staffName = dtrStaff.GetString(0);
                    
                    ddl.Items.Add(new ListItem(staffName, staffName));

                }
            }
            else
            {
                lblMessage.Text = "No Record in Staff List!";
            }

            conn.Close();
            dtrStaff.Close();

        }

        protected void ddlSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDsp.Items.Clear();
            setDdlSearch();
        }

        protected void setDdlSearch() {

            if (ddlSearch.SelectedValue.Equals("Date"))
            {
                getDateList(ddlDsp);
            }
            else if (ddlSearch.SelectedValue.Equals("Donor"))
            {
                getDonorList(ddlDsp);
            }
            else if (ddlSearch.SelectedValue.Equals("Staff"))
            {
                getStaffList(ddlDsp);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String queryString = "SELECT Donation.donationID AS 'Donation ID', Donor.donorName AS 'Donor Name', Donor.bloodType AS 'Blood Type', Donation.donationTime AS 'Donation Time', CONVERT(VARCHAR(10),Donation.donationDate,3) AS 'Donation Date', Donation.venue AS 'Venue', Staff.staffName AS 'Nurse In Charge' FROM Donation INNER JOIN Donor ON Donation.donorID = Donor.donorID LEFT JOIN Staff ON Donation.staffID = Staff.staffID WHERE ";
            String whereStr = "";

            if (ddlSearch.SelectedValue.Equals("Date"))
            {
                DateTime d = DateTime.ParseExact(ddlDsp.SelectedValue,"dd/MM/yyyy", CultureInfo.InvariantCulture);
                whereStr = "Donation.donationDate='" + d.ToString()+"'";
            }
            else if (ddlSearch.SelectedValue.Equals("Donor"))
            {
                whereStr = "Donor.donorName='" + ddlDsp.SelectedValue + "'";
            }
            else if (ddlSearch.SelectedValue.Equals("Staff"))
            {
                whereStr = "Staff.staffName'" + ddlDsp.SelectedValue + "'";
            }
            
            DataSet ds = GetData(queryString+ whereStr);
            if (ds.Tables.Count > 0)
            {
               
                GridView1.DataSource = ds;
                GridView1.DataBind();
                lblMessage.Text = "Please select the record to edit.";
            }
            else
            {
                lblMessage.Text = "No records found.";
            }

        }

        protected DataSet GetData(String queryString)
        {

            // Retrieve the connection string stored in the Web.config file.
            String connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            DataSet ds = new DataSet();

            try
            {
                // Connect to the database and run the query.
                SqlConnection connection = new SqlConnection(connectionString);
                SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);

                // Fill the DataSet.
                adapter.Fill(ds);

            }
            catch (Exception ex)
            {
                lblMessage.Text = "Unable to connect to the database.";
            }

            return ds;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getStaffList(ddlStaff);
            GridViewRow row = GridView1.SelectedRow;
            lblDonor.Text = row.Cells[2].Text;
            lblBT.Text = row.Cells[3].Text;
            lblDT.Text = row.Cells[4].Text;
            lblDD.Text = row.Cells[5].Text;
            lblV.Text = row.Cells[6].Text;
            ddlStaff.SelectedValue = row.Cells[7].Text;
            Panel1.Visible = true;
        }

        protected void ddlStaff_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                ddlStaff.Enabled = true;
            }
            else {
                ddlStaff.Enabled = false;
            }
            
        }

        protected void lblConfirm_Click(object sender, EventArgs e)
        {
            try
            {

                String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(strConn);

                conn.Open();
                GridViewRow row = GridView1.SelectedRow;
                String strSelect = "UPDATE Donation SET staffID = " + getStaffID() + "WHERE donationID =" + int.Parse(row.Cells[1].Text);

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

                cmdSelect.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Updated Successfully')", true);
            }
            catch (Exception ex){
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Update Unsuccessful')", true);
            }

        }

        protected int getStaffID()
        {
            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);

            conn.Open();

            String strSelect = "Select staffID FROM staff WHERE staffName = '" + ddlStaff.SelectedValue + "' ";

            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            int staffID = int.Parse(cmdSelect.ExecuteScalar().ToString());
            conn.Close();
            return staffID;
        }
    }
}