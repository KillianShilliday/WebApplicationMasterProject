using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS325_Master_Project.Demos.MATDepartment
{
    public partial class ProspectiveStudent1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string htmlOutput; 
            //Don't use this for output, but only for debugging! :)
            //Response.Write("hello world");

            //Let's hide the main form first!
            PanelForm.Visible = false;

            //Build a dynamic HTML ouput
            htmlOutput = "<h2>Thank you, " + StudentName.Text + " for your submission!</h2>";
            htmlOutput += "<br>Here's a summary of your submission:";
            htmlOutput += "<br>Your email: " + Email.Text;
            htmlOutput += "<br>Your Gender: " + Gender.Text;


            //Let's make a custom message for the user!
            ResultMsg.Text = htmlOutput;


        }
    }
}