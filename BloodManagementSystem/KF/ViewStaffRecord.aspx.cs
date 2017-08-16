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
    public partial class ViewStaffRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlDataReader dtrSelect;

            string select = "";
            select = "Select * from Staff";


            SqlCommand cmdSelect = new SqlCommand(select, con);

            dtrSelect = cmdSelect.ExecuteReader();

            string id = "", name = "", ic = "", number = "", address = "", position = "";

            if (dtrSelect.HasRows)
            {
                while (dtrSelect.Read())
                {
                    id += dtrSelect["staffID"].ToString() + "" + "<br>";
                    ID.Text = id;

                    name += dtrSelect["staffName"].ToString() + "" + "<br>";
                    Name.Text = name;

                    ic += dtrSelect["staffIC"].ToString() + "" + "<br>";
                    IC.Text = ic;

                    number += dtrSelect["staffContactNo"].ToString() + "" + "<br>";
                    Number.Text = number;

                    address += dtrSelect["staffAddress"].ToString() + "" + "<br>";
                    Address.Text = address;

                    position += dtrSelect["staffPosition"].ToString() + "" + "<br>";
                    Position.Text = position;

                }
            }
            dtrSelect.Close();
            con.Close();
        }
    }
    }
