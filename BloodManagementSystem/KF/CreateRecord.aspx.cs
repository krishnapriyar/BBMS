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
    public partial class CreateRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strCon);
            conn.Open();

            string Insert = "";

            Insert = "Insert into Staff (staffName, staffIC ,staffContactNo, staffAddress,staffPosition) Values (@name, @ic, @contact, @address, @position)";

            SqlCommand cmdInsert;
            cmdInsert = new SqlCommand(Insert, conn);

            cmdInsert.Parameters.AddWithValue("@name", Name.Text);
            cmdInsert.Parameters.AddWithValue("@ic", IC.Text);
            cmdInsert.Parameters.AddWithValue("@contact", Number.Text);
            cmdInsert.Parameters.AddWithValue("@address", textarea1.InnerText);
            cmdInsert.Parameters.AddWithValue("@position", RadioButtonList1.SelectedValue);

            int InsertStatus = cmdInsert.ExecuteNonQuery();

            conn.Close();

        }

       
    }
}