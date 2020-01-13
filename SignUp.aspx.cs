using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_loan
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            
          
        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            if (tbPass1.Text.Equals(tbPass2.Text))
            {
                DBconnection dbc = new DBconnection();
                string qu = "Exec sp_InsertUser @un='" + tbName.Text + "', @em='" + tbEmail.Text + "',@uph='" + tbPhone.Text + "',@udob='" + Convert.ToDateTime(tbDOB.Text) + "',@pas='" + tbPass1.Text+"'";
                bool r = dbc.iud(qu);
                Response.Write("<script> alert('Successful sign up') </script>");
            }
            else
            {
                Response.Write("<script> alert('Invalid sign up. Passwords do not match')</script>");
            }
        }
    }
}