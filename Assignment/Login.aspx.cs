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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            con = new SqlConnection(strCon);
            con.Open();

            string Select = "";
            

            Select = "Select custID from Customer where custID=@id  ";

            SqlCommand cmdSelect = new SqlCommand(Select, con);
           cmdSelect.Parameters.AddWithValue("@id", TextBox1.Text);
            

            SqlDataReader dtrID = cmdSelect.ExecuteReader();

            if (dtrID.HasRows)
            {
                dtrID.Read();
                Label1.Text = (".L.");
                Session["id"] = TextBox1.Text;
                Response.Redirect("Order.aspx");
            }
            


            con.Close();
        }
    }
}