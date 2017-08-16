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
    public partial class SearchStaffRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();

            string Select = "Select * from Staff where staffID=@id";
            SqlCommand cmdSelect = new SqlCommand(Select, con);

            cmdSelect.Parameters.AddWithValue("@id", ID.Text);


            SqlDataReader dtrStaff = cmdSelect.ExecuteReader();

            string msg = "";

            if (dtrStaff.HasRows)
            {
                while (dtrStaff.Read())
                {
                    msg += "Staff Name :" + dtrStaff["staffName"].ToString() + "</br>" +
                            "Staff IC:" + dtrStaff["staffIC"].ToString() + "</br>" +
                            "Contact Number:" + dtrStaff["staffContactNo"].ToString() + "</br>" +
                            "Address:" + dtrStaff["staffAddress"].ToString() + "</br>" +
                            "Position:" + dtrStaff["staffPosition"].ToString() + "</br>";
                }
                lblMesg.Text = msg;

            }
            else
            {
                lblMesg.Text = "No Record found.";
            }
            con.Close();
        }
    }
    }
