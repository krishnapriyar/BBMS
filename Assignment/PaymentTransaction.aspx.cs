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
    public partial class PaymentTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double a = 11.50;
            double b = 13.00;
            double ab = 15.00;
            double o = 20.00;
            double hh = 50.00;
            double totalamin = 0;
            double totalaplus = 0;
            double totalabmin = 0;
            double totalabplus = 0;
            double totalbmin = 0;
            double totalbplus = 0;
            double totalhh = 0;
            double totalomin = 0;
            double totaloplus = 0;
            double totalprice = 0;


            Label1.Text = Session["id"].ToString();
            Label2.Text = Session["orderID"].ToString();


            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            con = new SqlConnection(strCon);
            con.Open();

            string Select = "";

            Select = "Select * from BloodOrderList where orderID=@id ";

            SqlCommand cmdSelect = new SqlCommand(Select, con);
            cmdSelect.Parameters.AddWithValue("@id", Label2.Text);

            SqlDataReader dtrID = cmdSelect.ExecuteReader();

            if (dtrID.HasRows)
            {
                while (dtrID.Read())
                {


                    if (dtrID["bloodType"].ToString().Equals("A-"))
                    {
                        AMIN.Text = dtrID["OrderQty"].ToString();
                        totalamin = int.Parse(AMIN.Text) * a;
                        aminprice.Text = totalamin.ToString();
                       
                    }
                    else if (dtrID["bloodType"].ToString().Equals("A+"))
                    {

                        APLUS.Text = dtrID["OrderQty"].ToString();
                        totalaplus = int.Parse(APLUS.Text) * a;
                        aplusprice.Text = totalaplus.ToString();

                    }
                    else if (dtrID["bloodType"].ToString().Equals("AB-"))
                    {

                        ABMIN.Text = dtrID["OrderQty"].ToString();
                        totalabmin = int.Parse(ABMIN.Text) * ab;
                        abminprice.Text = totalabmin.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("AB+"))
                    {
                        ABPLUS.Text = dtrID["OrderQty"].ToString();
                        totalabplus = int.Parse(ABPLUS.Text) * ab;
                        abplusprice.Text = totalabplus.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("B-"))
                    {

                        BMIN.Text = dtrID["OrderQty"].ToString();
                        totalbmin = int.Parse(BMIN.Text) * b;
                        bminprice.Text = totalbmin.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("B+"))
                    {

                        BPLUS.Text = dtrID["OrderQty"].ToString();
                        totalbplus = int.Parse(BPLUS.Text) * b;
                        bplusprice.Text = totalbplus.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("HH"))
                    {

                        HH.Text = dtrID["OrderQty"].ToString();
                        totalhh = int.Parse(HH.Text) * hh;
                        hhprice.Text = totalhh.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("O-"))
                    {

                        OMIN.Text = dtrID["OrderQty"].ToString();
                        totalomin = int.Parse(OMIN.Text) * o;
                        ominprice.Text = totalomin.ToString();
                    }
                    else if (dtrID["bloodType"].ToString().Equals("O+"))
                    {

                        OPLUS.Text = dtrID["OrderQty"].ToString();
                        totaloplus = int.Parse(OPLUS.Text) * o;
                        oplusprice.Text = totaloplus.ToString();
                    }
                   

                    totalprice = totalabmin + totalabplus + totalamin + totalaplus + totalbmin + totalbplus + totalhh + totalomin + totaloplus;
                    grandTotal.Text = totalprice.ToString();

                    Session["total"] = grandTotal.Text;
                    
                }
            }

             


            con.Close();

        }




        
            
        

        
    }
}