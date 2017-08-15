using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }

        //        SqlConnection conBook;
        //        SqlCommand cmdBook;
        //        SqlDataReader dtrBook;

        //        String connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //        conBook = new SqlConnection(connStr);
        //        conBook.Open();

        //        string strsql = "Select orderID, collectionTime, collectionDate from BloodOrder where orderID = @OID";

        //        cmdBook = new SqlCommand(strsql, conBook);
        //        cmdBook.Parameters.AddWithValue("@OID");

        //        dtrBook = cmdBook.ExecuteReader();

        //        if (dtrBook.Read())
        //        {

        //        }
        //    }
        //    protected void SendEmail(object sender, EventArgs e)
        //    {
        //        using (MailMessage mm = new MailMessage(txtEmail.Text, txtTo.Text))
        //        {
        //            mm.Subject = "Blood Purchase Booking Overview "+DateTime.Now.ToShortDateString();
        //            mm.Body = txtBody.Text;
        //            //if (fuAttachment.HasFile)
        //            //{
        //            //    string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
        //            //    mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
        //            //}
        //            mm.IsBodyHtml = false;
        //            SmtpClient smtp = new SmtpClient();
        //            smtp.Host = "smtp.gmail.com";
        //            smtp.EnableSsl = true;
        //            NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text, txtPassword.Text);
        //            smtp.UseDefaultCredentials = true;
        //            smtp.Credentials = NetworkCred;
        //            smtp.Port = 587;
        //            smtp.Send(mm);
        //            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        //        }
        //    }

            protected void Button1_Click(object sender, EventArgs e)
    {

    }

}
