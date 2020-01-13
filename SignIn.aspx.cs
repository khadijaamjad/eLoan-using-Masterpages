using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_loan
{
    public partial class SignIn : System.Web.UI.Page
    {
        public static string ema;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            ema = tbEmail.Text;
            DBconnection dbcd = new DBconnection();
            string q = "Exec sp_FindAccount @em='" + tbEmail.Text + "', @pa='" + tbPass1.Text + "'";
            bool avlbl= dbcd.checkData(q);
            if(avlbl==true)
            {
                Response.Write("<script>alert('Login successful!')</script>");
                Response.Redirect("GetLoan.aspx");
           }
            else
            {
                Response.Write("<script>alert('Invalid credentials provided')</script>");
            }
        }
    }
}