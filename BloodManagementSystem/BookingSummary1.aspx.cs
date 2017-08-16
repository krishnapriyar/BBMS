using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private static String custEmail;
        private static Boolean okayToEmail;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conBook;
            SqlCommand cmdBook;

            String connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conBook = new SqlConnection(connStr);
            conBook.Open();

            string strsql = "Select custEmail from Customer where custID = @OID";

            cmdBook = new SqlCommand(strsql, conBook);
            cmdBook.Parameters.AddWithValue("@OID", Session["custID"]);
            custEmail = (String)cmdBook.ExecuteScalar();
        }

        protected void SendEmail(String txtBody, String txtTo)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(txtTo);
                mailMessage.From = new MailAddress("krishnapriy-ja14@student.tarc.edu.my");
                mailMessage.Subject = "Blood Purchase Booking Overview " + DateTime.Now.ToShortDateString();
                mailMessage.Body = txtBody;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("krishnapriy-ja14@student.tarc.edu.my", "vettai@27");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mailMessage);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
            catch (Exception ex)
            {
                Response.Write("Could not send the e-mail - error: " + ex.Message);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            btnPrint.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            StringBuilder SB = new StringBuilder();
            StringWriter SW = new StringWriter(SB);
            HtmlTextWriter htmlTW = new HtmlTextWriter(SW);
            form1.RenderControl(htmlTW);
            String email = custEmail;

            //Idk what is this, don't ask me. It's just fuxking works
            System.Reflection.FieldInfo fi = typeof(Page).GetField("_fOnFormRenderCalled", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            if (fi != null)
            {
                fi.SetValue(this, false);
            }

            //SendEmail(SB.ToString(),custEmail);
            SendEmail(SB.ToString(), email);
            Button2.Visible = true;
            Button3.Visible = true;
            btnPrint.Visible = true;
            Button1.Visible = true;
        }

    }
}