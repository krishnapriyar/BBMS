using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace BookingModule
{
    public partial class BookingOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conBook;
            SqlCommand cmdBook;
            SqlDataReader dtrBook;

            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conBook = new SqlConnection(connString);

            conBook.Open();

            string strsql = "Select * from ";

            cmdBook = new SqlCommand(strsql, conBook);

            dtrBook = cmdBook.ExecuteReader();

            if (dtrBook.Read())
            {
                
            }
            else { }
        }

        //protected void SendEmail(object sender, EventArgs e)
        //{
        //    using (MailMessage mm = new MailMessage(txtEmail.Text, txtTo.Text))
        //    {
        //        mm.Subject = txtSubject.Text;
        //        mm.Body = txtBody.Text;
        //        if (fuAttachment.HasFile)
        //        {
        //            string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
        //            mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
        //        }
        //        mm.IsBodyHtml = false;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text, txtPassword.Text);
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = NetworkCred;
        //        smtp.Port = 587;
        //        smtp.Send(mm);
        //        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        //    }
        //}

    }
}