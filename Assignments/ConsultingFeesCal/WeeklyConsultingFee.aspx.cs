using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

namespace WebApplicationMasterProject.Assignments
{
    public partial class WeeklyConsultingFee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void CalculateB_Click(object sender, EventArgs e)
        {

            //Declaring Variables
            int skillNum = 0;
            double hoursWorked = 0, hourlyWage = 0, consultFee, overtimeHours = 0, standHours = 40, overtimeFee = 0;
            string outputMSG, mcsdStatus = "non-certified", techSkills="", emailResponse = "", clientName = ClientNameTB.Text;
            string clientEmail = ClientEmailTB.Text;
            bool emailSuccess;

            //Switch case to set base hourly pay
            switch (JobTitleDDL.SelectedValue)
            {
                case "Developer":
                    hourlyWage = 100;
                    break;
                case "Analyst":
                    hourlyWage = 120;
                    break;
                case "Architect":
                    hourlyWage = 150;
                    break;
                case "Project Lead":
                    hourlyWage = 200;
                    break;
            }

            //Sets the MCSD value to Certified and increases hourly wage
            if (MCSDRB.SelectedValue == "Yes")
            {
                hourlyWage = hourlyWage * 1.2;
                mcsdStatus = "certified";
            }


            //takes in hours worked and decides if calculates pay and overtime pay
            hoursWorked = Convert.ToInt32(HoursWorkedTB.Text);
            if (hoursWorked > 40)
            {
                overtimeHours = hoursWorked - 40;
                overtimeFee = overtimeHours * (hourlyWage * 1.5);

                consultFee = (standHours * hourlyWage) + overtimeFee;

            }
            else
            {
                consultFee = hoursWorked * hourlyWage;
            }

            foreach(ListItem skillSelected in SkillsUsed.Items)
            {
                if (skillSelected.Selected)
                {
                    if (skillNum > 0)
                    techSkills += ", " + skillSelected.Text;
                    else techSkills += skillSelected.Text;
                    skillNum++;
                }
            }
            
            
            //Output Message to Web form and email
            outputMSG = "Thank you, " + NameTB.Text + " for using the consulting fees Calculator! <br>";
            outputMSG += "Based on your selected profile - " + JobTitleDDL.Text + ", your " + mcsdStatus + " MCSD status and ";
            outputMSG += hoursWorked + " work hours, your weekly consulting fees are- ";
            outputMSG += consultFee.ToString("C2") + ". The technical skills you have applied are " + techSkills + ". ";

            emailResponse += "Dear " + clientName + ",<br><br>";
            emailResponse += " Thanks so much for using our consulting service. The following is a billing summary for the week<br><br>";
            emailResponse += "Consultant Name: " + NameTB.Text + "<br>";
            emailResponse += "MCSD Certificate: " + mcsdStatus + "<br>";
            emailResponse += "Technical Skills Applied: " + techSkills + "<br>";
            emailResponse += "Billing Hours: " + hoursWorked + "<br>";
            emailResponse += "Total Consulting Fees: " + consultFee.ToString("C2") + "<br>";

            if (overtimeHours > 0)
            {
                outputMSG += "Your overtime hours this week are " + overtimeHours;
                outputMSG += ", And your overtime consulting fees are " + overtimeFee.ToString("C2") + ".<br>";

                emailResponse += "Overtime: " + overtimeHours + "<br>";
                emailResponse += "Overtime Charge: " + overtimeFee.ToString("C2") + "<br>";
            }
            InputPanel.Visible = false;

            //Calls the email class

            if (EmailClientRBL.SelectedValue == "Yes")
            {
                emailSuccess = SendCustomerEmail(clientEmail, clientName, emailResponse);

                if(emailSuccess)
                {
                    outputMSG += " An email was sent to the Client.";
                }
            }

            ResultMSG.Text = outputMSG;

        }

        //Makes the Email Panel Visible
        protected void EmailClientRBL_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(EmailClientRBL.Text == "Yes")
            {
                EmailClientPanel.Visible = true;
                ClientEmailValidator.Enabled = true;
                ClientNameValidator.Enabled = true;
            }
            if(EmailClientRBL.Text == "No")
            {
                EmailClientPanel.Visible= false;
                ClientEmailValidator.Enabled = false;
                ClientNameValidator.Enabled= false;
            }

        }


        //Sends the Email to the Client
        public bool SendCustomerEmail(string sendCustomerEmail, string sendCustomerName, string sendResultMsg)
        {
            string sendFromEmail = "killiancistest@gmail.com";
            string emailPassword = "juda imhj msik eyyw";

            string sendFromName = "Consultation Calculator";
            string sendToEmail = sendCustomerEmail;
            string sendToName = sendCustomerName;

            string messageSubject = "Consultation Fee";
            string messageBody = sendResultMsg;  //Here, you may customize the message a bit. :)

            //This is standard procedure for object instatiation!!!
            MailAddress from = new MailAddress(sendFromEmail, sendFromName);
            MailAddress to = new MailAddress(sendToEmail, sendToName);
            MailMessage emailMessage = new MailMessage(from, to);

            emailMessage.Subject = messageSubject;
            emailMessage.Body = messageBody;
            emailMessage.IsBodyHtml = true;

            //Hint: Create a method here to generete PDF (return true if successful)


            //Using email client/server to send out emails. Watch out for the run-time errors!

            try
            {
                SmtpClient client = new SmtpClient();

                client.Host = "smtp.gmail.com";
                System.Net.NetworkCredential basicauthenticationinfo = new System.Net.NetworkCredential(sendFromEmail, emailPassword);
                client.Port = int.Parse("587");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicauthenticationinfo;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                //attachment - add one here using the attachment property.
                client.Send(emailMessage);

                /*
                    Go to https://myaccount.google.com/security.
                    Scroll down to "Signing in to Google".
                    Enable 2-Step Verification. Then Click 2-Step Verification
                    Search for "App Password" and add an App Password.
                    Use the generated password in your code.
                */

                return true;
            }
            catch (Exception ex)
            {
                ErrorMSG.Text = $"An error occurred: {ex.Message}|{ex.HResult}";
                throw;
            }
        }

        protected void ResetB_Click(object sender, EventArgs e)
        {

            //Clears all entries and hides panels
            NameTB.Text = string.Empty;
            JobTitleDDL.ClearSelection();
            MCSDRB.ClearSelection();
            HoursWorkedTB.Text = string.Empty;
            SkillsUsed.ClearSelection();
            EmailClientRBL.SelectedValue = "No";
            ClientEmailTB.Text = string.Empty;
            ClientNameTB.Text = string.Empty;
            EmailClientPanel.Visible = false;
        }
    }
}