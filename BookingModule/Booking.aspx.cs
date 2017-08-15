using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BookingModule
{
    public partial class Booking : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            rgvDate.MinimumValue = DateTime.Now.Date.AddDays(1.0).ToString("d");
            rgvDate.MaximumValue = DateTime.Now.Date.AddDays(30.0).ToString("d");
            if (!IsPostBack)
            {


                Gen_Qty("A+", ddlAP);
                Gen_Qty("B+", ddlBP);
                Gen_Qty("O+", ddlOP);
                Gen_Qty("AB+", ddlABP);
                Gen_Qty("A-", ddlAN);
                Gen_Qty("B-", ddlBN);
                Gen_Qty("O-", ddlON);
                Gen_Qty("AB-", ddlABN);
                Gen_Qty("HH", ddlHH);

            }

          

        }

        protected void btnBookBlood_Click(object sender, EventArgs e)
        {
            
        }

        protected void Gen_Qty(String bloodType, DropDownList ddlQuantity)
        {

            String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();

            String strSelect = "Select quantity from Blood where bloodType = @bloodType";


            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            // get from session
            cmdSelect.Parameters.AddWithValue("@bloodType", bloodType);


            int quantity = int.Parse(cmdSelect.ExecuteScalar().ToString());

            for (int i = 0; i <= quantity; i++)
            {
                ddlQuantity.Items.Insert(i, new ListItem("" +i, "" +i));

            }

            conn.Close();

        }

        protected void btnCancelBooking_Click(object sender, EventArgs e)
        {

        }

        protected void ddlAP_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageAP.Enabled = true;
            }
            else {
                txtUsageAP.Enabled = false;
            }
        }

        protected void ddlBP_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageBP.Enabled = true;
            }
            else
            {
                txtUsageBP.Enabled = false;
            }
        }

        protected void ddlOP_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageOP.Enabled = true;
            }
            else
            {
                txtUsageOP.Enabled = false;
            }
        }

        protected void ddlABP_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageABP.Enabled = true;
            }
            else
            {
                txtUsageABP.Enabled = false;
            }
        }

        protected void ddlAN_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageAN.Enabled = true;
            }
            else
            {
                txtUsageAN.Enabled = false;
            }
        }

        protected void ddlBN_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageBN.Enabled = true;
            }
            else
            {
                txtUsageBN.Enabled = false;
            }
        }

        protected void ddlON_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageON.Enabled = true;
            }
            else
            {
                txtUsageON.Enabled = false;
            }
        }

        protected void ddlABN_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageABN.Enabled = true;
            }
            else
            {
                txtUsageABN.Enabled = false;
            }
        }

        protected void ddlHH_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            if (!ddl.SelectedValue.Equals("0"))
            {
                txtUsageHH.Enabled = true;
            }
            else
            {
                txtUsageHH.Enabled = false;
            }
        }
    }
}
