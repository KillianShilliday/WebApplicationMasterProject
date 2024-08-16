using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS325_Master_Project.Demos.MATDepartment
{
    public partial class PSTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Response.Write("hello world! " + StudentName.Text);
            string htmlOutput; 
            PanelForm.Visible = false;

            htmlOutput = "<h2>Thanks for your submission, " + StudentName.Text + "!</h2><p>";
            htmlOutput += "Here's a summary of your inquiry:";
            htmlOutput += "<br>Name: " + StudentName.Text;
            htmlOutput += "<br>Gender: " + Gender.Text;
            htmlOutput += "<br>Intended Major: " + IntendedMajor.Text;

            ResultMsg.Text = htmlOutput;

        }
    }
}