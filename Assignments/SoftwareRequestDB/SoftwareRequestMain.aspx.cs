using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasterProject.Assignments.SoftwareRequestDB
{
    public partial class GridView : System.Web.UI.Page
    {

        //allows me to select between the school database and my home development database
        //string selectedDatabase = "Shilliday705", databaseName = "Shilliday705";
        string selectedDatabase = "LocalHost", databaseName = "WEBDEVSERVER";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string queryAppID = Request.QueryString["ID"];
            string queryAction = Request.QueryString["Action"];


            //runs the delete action
            if (queryAction == "Delete")
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString);

                conn.Open();
                conn.ChangeDatabase(databaseName);

                //construct SQLquery (R)
                string sqlQuery = "DELETE FROM SoftwareRequest WHERE ID = " + queryAppID + ";";
                using (SqlCommand cmdSoftwareRequest = new SqlCommand(sqlQuery, conn))
                {
                    cmdSoftwareRequest.ExecuteNonQuery();
                }
                conn.Close();

                DeleteMsg.Visible = true;
            }
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        protected void BindData()
        {

            string constr = ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM SoftwareRequest";
                    cmd.Connection = con;

                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }
        protected void Search_Click(object sender, EventArgs e)
        {

            //search logic
            string searchCriteria = SearchBox.Text;

            //searches for name
            if (SearchType.Text == "Name")
            {
                string constr = ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        //uses = to search for an exact match
                        cmd.CommandText = "SELECT * FROM SoftwareRequest WHERE FacultyName = '" + searchCriteria + "';";
                        cmd.Connection = con;
                        // cmd.Parameters   hint: use this to perform a search!

                        DataTable dt = new DataTable();
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            //searches for software
            else if (SearchType.Text == "Software")
            {
                string constr = ConfigurationManager.ConnectionStrings[selectedDatabase].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {

                        //the use of LIKE and the %% allows me to search for data that is anywhere in the string
                        cmd.CommandText = "SELECT * FROM SoftwareRequest WHERE SoftwareName LIKE '%" + searchCriteria + "%';";
                        cmd.Connection = con;
                        // cmd.Parameters   hint: use this to perform a search!

                        DataTable dt = new DataTable();
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }
}