using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_loan
{
    public partial class GetLoan : System.Web.UI.Page
    {
        public static int ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            DBconnection dbg = new DBconnection();
            string q = "Select * from UserInfo where UserEmail='" + SignIn.ema + "'";
            DataTable dt= dbg.getData(q);
            ab = Convert.ToInt32(dt.Rows[0]["UserID"]);
            lblName.Text = dt.Rows[0]["UserName"].ToString();
            lblPhone.Text = dt.Rows[0]["UserPhone"].ToString(); ;
            lblEmail.Text = dt.Rows[0]["UserEmail"].ToString(); ;
            lblDOB.Text = dt.Rows[0]["UserDob"].ToString(); ;
            DBconnection dba = new DBconnection();
            string ageq = "Select DATEDIFF(YY,UserDob,GETDATE()) From UserInfo where UserEmail='"+lblEmail.Text+"'";
            DataTable dta = dba.getData(ageq);
            lblAge.Text =dta.Rows[0][0].ToString();
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            DBconnection dbl = new DBconnection();
            string que = "Exec sp_InsertLoan @uid="+ab+",@pro='" + ddProfession.Text + "',@am=" + Convert.ToDouble(tbAmount.Text) + ",@sal=" + Convert.ToDouble(tbSalary.Text) + ",@dep=" + Convert.ToInt32(tbDependencies.Text) + ",@rea='" + ddReason.Text + "',@ts=" + Convert.ToInt32(tbTimeSpan.Text) + ",@inte=" + Convert.ToDouble(lblInter.Text) + ",@insta=" + Convert.ToDouble(lblInstallments.Text);
           bool k= dbl.iud(que);
            if(k==true)
            {
                Response.Write("<script>alert('Loan Requested')</script>");
            }
            if (k == false)
            {
                Response.Write("<script>alert('Loan could not be requested')</script>");
            }
        }
        public void GetLoanValues()
        {
            double inter=500, instal;
            double sal = Convert.ToDouble(tbSalary.Text);
            double am = Convert.ToDouble(tbAmount.Text);
            int years = Convert.ToInt32(tbTimeSpan.Text);
            int months = years * 12;
            if(months<=18)
            {
                inter = 0.1 * am;
            }
           if(months>18 && months <= 24)
            {
                inter = 0.15 * am;
            }
           if(months>24)
            {
                inter = 0.2 * am;
            }
            double temp = inter + am;
            instal = temp / months;
            lblInter.Text = ""+inter;
            lblInstallments.Text = "" + instal;
            if(instal>sal)
            {
                lblRes.Text = "This loan will exceed your salary limit.";
            }
            else
            {
                lblRes.Text = "This loan is within your salary limit. Loan can be requested.";
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            GetLoanValues();
        }
    }
}