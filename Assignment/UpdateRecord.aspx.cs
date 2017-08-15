using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment
{
    public partial class UpdateRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            con = new SqlConnection(strCon);
            con.Open();

            string Select = "";

            Select = "Select * from Staff where staffID=@id  ";

            SqlCommand cmdSelect = new SqlCommand(Select, con);
            cmdSelect.Parameters.AddWithValue("@id", ID.Text);

            SqlDataReader dtrID = cmdSelect.ExecuteReader();

            if (dtrID.HasRows)
            {
                dtrID.Read();
                Name.Text = dtrID["staffName"].ToString();
                IC.Text = dtrID["staffIC"].ToString();
                Contact.Text = dtrID["staffContactNo"].ToString();
                Address.Text = dtrID["staffAddress"].ToString();
                Position.SelectedValue = dtrID["staffPosition"].ToString(); 
                    
            }
            con.Close();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(strCon);

            con.Open();

            string Insert = "Update Staff SET staffName=@name, staffIC=@IC, staffContactNo=@No, staffAddress=@address, staffPosition=@Position where staffID=@id ";

            SqlCommand cmdUpdate;
            cmdUpdate = new SqlCommand(Insert, con);

            cmdUpdate.Parameters.AddWithValue("@name", Name.Text);
            cmdUpdate.Parameters.AddWithValue("@IC", IC.Text);
            cmdUpdate.Parameters.AddWithValue("@No", Contact.Text);
            cmdUpdate.Parameters.AddWithValue("@address", Address.Text);
            cmdUpdate.Parameters.AddWithValue("@id", ID.Text);
            cmdUpdate.Parameters.AddWithValue("@Position", Position.SelectedValue);

            int intUpdateStatus = cmdUpdate.ExecuteNonQuery();

            if(intUpdateStatus >0)
            {
                lblMesg.Text = "Update Successful.";

             }
            else
            {
                lblMesg.Text = "Update failed. Please try again";
            }

            con.Close();

        }
    }
}