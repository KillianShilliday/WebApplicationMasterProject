using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasterProject.Assignments.SoftwareRequest
{
    public partial class SoftwareRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Hide form
            FormPanel.Visible= false;

            //output message
            string htmlOutput;

            htmlOutput = "Professor " + FacultyName.Text + ", Your software request for " + SoftwareName.Text;
            htmlOutput += " has been submitted. We will process your request soon.";

            ResultMessage.Text = htmlOutput;
        }

        protected void MultipleCourses_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RationaleRBL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}