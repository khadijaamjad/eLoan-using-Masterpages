using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_loan
{
    public partial class ViewRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            DBconnection dbv = new DBconnection();
            string query;
            if(ddOptions.SelectedValue=="UserAccounts")
            {
                query = "Select UserID, UserName,UserEmail,UserDob,UserPhone from UserInfo";
            }
            else
            {
                query = "Select * from Loans";
            }
            DataTable dtr = dbv.getData(query);
            dgvRecords.DataSource = dtr;
            dgvRecords.DataBind();
        }
    }
}