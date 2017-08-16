using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagement
{
    public partial class BloodUsageHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtStart_TextChanged(object sender, EventArgs e)
        {
            try
            {
                DateTime d1 = DateTime.Parse(txtStart.Text);
                DateTime d2 = DateTime.Parse(txtEnd.Text);

                int t = DateTime.Compare(d1, d2);
                if (t > 0)
                {
                    lblError.Visible = true;
                    lblError.Text = "Start Date cannot be larger than End Date.";
                }
                else
                {
                    lblError.Visible = false;
                }
            }
            catch (Exception ex) { }

        }

        protected void txtEnd_TextChanged(object sender, EventArgs e)
        {
            try
            {
                DateTime d1 = DateTime.Parse(txtStart.Text);
                DateTime d2 = DateTime.Parse(txtEnd.Text);

                int t = DateTime.Compare(d1, d2);
                if (t > 0)
                {
                    lblError.Visible = true;
                    lblError.Text = "Start Date cannot be larger than End Date.";
                }
                else
                {
                    lblError.Visible = false;
                }
            }
            catch (Exception ex) { }
        }


    }
}