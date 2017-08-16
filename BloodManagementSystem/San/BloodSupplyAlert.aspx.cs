using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagement
{
    public partial class BloodSupplyAlert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlBT.SelectedValue = "A-";
                tbCQ.Text = getCQ().ToString();
            }
            setCellColor();
        }

        protected float getCQ()
        {
            float CQ = 10.0f;
            try
            {
                String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(strConn);

                conn.Open();

                String strSelect = "Select criticalQty FROM Blood WHERE bloodType = '" + ddlBT.SelectedValue + "' ";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

                CQ = float.Parse(cmdSelect.ExecuteScalar().ToString());
                conn.Close();

            }
            catch (Exception ex) { }

            return CQ;
        }

        protected void ddlBT_SelectedIndexChanged(object sender, EventArgs e)
        {
            tbCQ.Text = getCQ().ToString();
            setCellColor();

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            tbCQ.Enabled = CheckBox1.Checked ? true : false;
        }

        protected void setCellColor()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                float Quantity = float.Parse(GridView1.Rows[i].Cells[1].Text);
                float criticalQty = float.Parse(GridView1.Rows[i].Cells[2].Text);

                if (criticalQty > Quantity)
                {
                    GridView1.Rows[i].BackColor = Color.LightPink;
                }


            }
        }

        protected void btnSet_Click(object sender, EventArgs e)
        {
            try
            {

                String strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(strConn);

                conn.Open();
                GridViewRow row = GridView1.SelectedRow;
                String strSelect = "UPDATE Blood SET criticalQty = " + float.Parse(tbCQ.Text) + " WHERE bloodType ='" + ddlBT.SelectedValue + "'";

                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

                cmdSelect.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Updated Successfully')", true);
                GridView1.DataBind();
                setCellColor();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Update Unsuccessful')", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Panel1.Visible)
            {
                Panel1.Visible = true;
                Button1.Text = "Hide";
            }
            else
            {
                Button1.Text = "Change Critical Quantity";
                Panel1.Visible = false;
            }
        }
    }
}