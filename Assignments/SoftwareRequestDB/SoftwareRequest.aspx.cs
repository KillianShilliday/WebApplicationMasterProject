using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplicationMasterProject.Assignments.SoftwareRequest
{
    public partial class SoftwareRequest : System.Web.UI.Page
    {

        //allows me to switch between school and home database

        //string selectedDatabase = "Shilliday705", databaseName = "Shilliday705";
        string selectedDatabase = "LocalHost", databaseName = "WEBDEVSERVER" ;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string queryAppID = Request.QueryString["ID"];
            string queryAction = Request.QueryString["Action"];


            //Completes the selected actions from the Main table
            if (queryAction == "Edit" || queryAction == "View")
            {
                //Passed validation, now do the DB operation.

                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString);

                try
                {
                    conn.Open();
                    conn.ChangeDatabase(databaseName);

                    //construct SQLquery (R)
                    string sqlQuery = "SELECT * FROM SoftwareRequest WHERE ID = " + queryAppID + ";";

                    SqlCommand cmdMortgageApp = new SqlCommand(sqlQuery, conn);
                    SqlDataReader rsCustomers = cmdMortgageApp.ExecuteReader();

                    if (rsCustomers.Read())
                    {
                        XDocument doc = XDocument.Parse(rsCustomers["DataFormXML"].ToString());
                        //Loop through all elements

                        foreach (XElement xe in doc.Root.Descendants())
                        {
                            string fieldID = xe.Attribute("ID").Value;
                            string fieldType = xe.Attribute("Type").Value;
                            string fieldValue = xe.Value;

                            ContentPlaceHolder cph = (ContentPlaceHolder)this.Master.FindControl("MainContent");
                            if (fieldType == "TextBox")
                            {
                                TextBox tb = (TextBox)cph.FindControl(fieldID);
                                tb.Text = fieldValue;
                                if (queryAction == "View")
                                {
                                    tb.ReadOnly = true;
                                    tb.BorderStyle = BorderStyle.None;
                                }
                            }
                            else if (fieldType == "CheckBoxList")
                            {
                                CheckBoxList chklst = (CheckBoxList)cph.FindControl(fieldID);
                                string[] items = fieldValue.Split(',');
                                for (int i = 0; i <= items.GetUpperBound(0); i++)
                                {
                                    ListItem currentCheckBox = chklst.Items.FindByText(items[i].ToString().Trim());
                                    if (currentCheckBox != null)
                                    {
                                        currentCheckBox.Selected = true;

                                    }
                                    if (queryAction == "View")
                                        chklst.Items[i].Enabled = false;
                                }
                            }
                            else if (fieldType == "RadioButtonList")
                            {
                                RadioButtonList radiolst = (RadioButtonList)cph.FindControl(fieldID);
                                ListItem currentRadioBox = radiolst.Items.FindByText(fieldValue);
                                if (currentRadioBox != null)
                                {
                                    currentRadioBox.Selected = true;
                                }
                                if (queryAction == "View")
                                {
                                    for (int i = 0; i < radiolst.Items.Count; i++)
                                    {
                                        radiolst.Items[i].Enabled = false;
                                    }
                                }
                            }

                        }
                    }

                    else
                    {
                        ErrorMsg.Text = "No customer found! ";
                    }

                }
                catch (SqlException exception)
                {

                    ErrorMsg.Text = "Sorry an error has occurred! " + "Error Message: " + exception.Message + "Error No: " + exception.Number;
                }

                conn.Close();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            //Set Date
            //switched to capturing data and time in code to streamline the form
            string submitionDate = Convert.ToString(DateTime.Now);
            // Hide form
            FormPanel.Visible= false;

            //output message
            string htmlOutput;

            htmlOutput = "Professor " + FacultyName.Text + ", Your software request for " + SoftwareName.Text;
            htmlOutput += " has been submitted. We will process your request soon. If you would like to view an existing request," +
                "please click the link Below.";

            ResultMessage.Text = htmlOutput;
            //creates the xml code and saves all data to the database
             try
             {




                XDocument xmlForm = new XDocument(
                new XComment("Application Form for " + FacultyName.Text),
                new XElement("DataForm")
                );

                 foreach (Control myContol in FormPanel.Controls)
                {
                if (myContol.GetType().Name == "TextBox")
                {
                    TextBox textbox = (TextBox)myContol;
                    xmlForm.Element("DataForm").Add(new XElement("Field", textbox.Text, new XAttribute("ID", myContol.ID), new XAttribute("Type", "TextBox")));
                }
                else if (myContol.GetType().Name == "RadioButtonList")
                {
                    RadioButtonList radiolst = (RadioButtonList)myContol;
                    xmlForm.Element("DataForm").Add(new XElement("Field", radiolst.Text, new XAttribute("ID", myContol.ID), new XAttribute("Type", "RadioButtonList")));
                }
                else if (myContol.GetType().Name == "DropDownList")
                {
                    DropDownList droplst = (DropDownList)myContol;
                    xmlForm.Element("DataForm").Add(new XElement("Field", droplst.Text, new XAttribute("ID", myContol.ID), new XAttribute("Type", "DropDownList")));
                }
                else if (myContol.GetType().Name == "CheckBox")
                {
                    CheckBox chk = (CheckBox)myContol;
                    if (chk.Checked)
                    {
                        xmlForm.Element("DataForm").Add(new XElement("Field", chk.Text, new XAttribute("ID", myContol.ID), new XAttribute("Type", "CheckBox")));
                    }
                }
                else if (myContol.GetType().Name == "CheckBoxList")
                {
                    CheckBoxList chklst = (CheckBoxList)myContol;


                }
                 }

            var connectionString = ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString;

            var insertStatement = "INSERT into SoftwareRequest (FacultyName, FacultyEmail, ChairEmail, Department" +
                    ", SoftwareName, Cost, ApprovalStatus, DateSubmitted, DataFormXML) values (@FacultyName, @FacultyEmail," +
                    " @ChairEmail, @Department, @SoftwareName, @Cost, @ApprovalStatus, @DateSubmitted, @DataFormXML)";
                using(var sqlConnection = new SqlConnection(connectionString))
                {
                    sqlConnection.Open();
                    using(var sqlCommand = new SqlCommand(insertStatement, sqlConnection))
                    {
                        sqlCommand.Parameters.AddWithValue("FacultyName", FacultyName.Text);
                        sqlCommand.Parameters.AddWithValue("FacultyEmail", FacEmail.Text);
                        sqlCommand.Parameters.AddWithValue("ChairEmail", DCEmail.Text);
                        sqlCommand.Parameters.AddWithValue("Department", Department.Text);
                        sqlCommand.Parameters.AddWithValue("SoftwareName", SoftwareName.Text);
                        sqlCommand.Parameters.AddWithValue("Cost", YearlyCost.Text);
                        sqlCommand.Parameters.AddWithValue("ApprovalStatus", "Pending");
                        sqlCommand.Parameters.AddWithValue("DateSubmitted", submitionDate);
                        sqlCommand.Parameters.AddWithValue("DataFormXML", xmlForm.ToString());
                        sqlCommand.ExecuteNonQuery();
                    }
                }
             }
            catch (SqlException exception)
            {
                ErrorMsg.Text = "Sorry an error has occurred!" + "Error Message: " + exception.Message + " Error NO: " + exception.Number;
                throw;
            }

        }

        protected void MultipleCourses_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RationaleRBL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}