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
    public partial class Order : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["id"].ToString();
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            con = new SqlConnection(strCon);
            con.Open();

            string Select = "";

            Select = "Select * from BloodOrder where custID=@id  ";

            SqlCommand cmdSelect = new SqlCommand(Select, con);
            cmdSelect.Parameters.AddWithValue("@id", Label1.Text);

            SqlDataReader dtrID = cmdSelect.ExecuteReader();

            if (dtrID.HasRows)
            {
                dtrID.Read();
                Label2.Text = dtrID["orderID"].ToString();
                Session["orderID"] = Label2.Text;
                Response.Redirect("PaymentTransaction.aspx");

            }

            con.Close();
        }
    }
}