using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasterProject.Demos.MortgageCalculator
{
    public partial class MortgageCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            int age = Convert.ToInt32(CustomerAge.Text); //potential BOMB ;)
            double discountState = 0, discountLoanTerm = 0;

            if  (age >= 18 && age<=80) 
            {
                ResultMsg.Text = "Welcome to the mortgage calculator app!";
            }

            //lets evaluate the exceptions
            /*
           *if ( age<18 || age >80)
            {
                ErrorMsg.Text = "You Do not qualify for a loan.";
            }*/
            
            switch (State.SelectedValue)
            {
                case "CO":
                case "FL":
                    discountState = 0.1;
                    break;
                case "GA":
                    discountState = 0.08;
                    break;
                case "MI":
                    discountState = 0.05;
                    break;
                case "NY":
                    discountState = 0.03;
                    break;
                default:
                    discountState = 0;
                    break;
            }

            switch (LoanTerm.SelectedValue)
            {
                case "7ARM":
                    discountLoanTerm = 0.01;
                    break;
                case "10Year":
                    discountLoanTerm = .03;
                    break;
                case "30Year":
                    discountLoanTerm = 0.05;
                    break;
                default:
                    discountLoanTerm = 0;
                    break;
            }


            ResultMsg.Text = "Your state discount";

        }
    }
}