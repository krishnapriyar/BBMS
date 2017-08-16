using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class PurSumReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable GetSPResult()
        {
            DataTable ResultsTable = new DataTable();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

            try
            {
                SqlCommand cmd = new SqlCommand("PurchaseSummary", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Year", TextBox1.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ResultsTable);
            }

            catch (Exception ex)
            {
                //Response.Write(ex.ToString());
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }

            return ResultsTable;
        }

        protected void btnGen_Click(object sender, EventArgs e)
        {
            ReportViewer1.Visible = true;
            Label1.Text = "View Yearly Summary Report";
            DataTable dt = GetSPResult();
            ReportViewer1.Visible = true;
            ReportViewer1.LocalReport.ReportPath = "Reports/PurSumReport.rdlc";
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        }
    }
}