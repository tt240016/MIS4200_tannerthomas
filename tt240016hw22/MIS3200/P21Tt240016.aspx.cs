using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MIS3200_P21Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ddlStudentList_SelectedIndexChanged(object sender, EventArgs e)
    {
        // display information about the ddl
        DisplayDropDownListInformation();
        DisplayDataForStudentVersion3(Convert.ToInt32(ddlStudentList.SelectedValue));

    }

    protected void DisplayDropDownListInformation()
    {
        string strMessage = "";
        strMessage += "The ddlStudentList selected index is: " + ddlStudentList.SelectedIndex + "<br />";
        strMessage += "The ddlStudentList selected value is: " + ddlStudentList.SelectedValue + "<br />";
        strMessage += "The ddlStudentList selected value (method 2) is: " + ddlStudentList.SelectedItem.Value + "<br />";
        strMessage += "The ddlStudentList selected text is: " + ddlStudentList.SelectedItem.Text + "<br />";
        lblMessage.Text = strMessage;
    }

    /* New method --- >>>
     * SqlConnection
     * SqlCommand
     * SqlDataReader
     * used to conditionally read the data
     */

    protected void DisplayDataForStudentVersion1(int intWhichStudentId)
    {
        // create an instance of a SqlConnection object so that we konw where to find our database that we want to work with

        SqlConnection myConnection = new SqlConnection("Data Source=cob.ohio.edu;Initial Catalog=portfolio_tt240016_p21;Integrated Security=True");

        // create an instance of a SqlCommand object so that we know what SQL to execute against the database

        SqlCommand myCommand = new SqlCommand("SELECT * FROM [Student] WHERE ([studentId] = @studentId)", myConnection);

        // add any necessary parameters that the SQL command needs to guard against SQL injection

        myCommand.Parameters.Add("@studentId", SqlDbType.Int).Value = intWhichStudentId;
        try
        {
            // let's open the database connection

            myConnection.Open();

            // create an instance of a SqlDataReader object so that we can read the data from the database

            SqlDataReader myReader = myCommand.ExecuteReader();

            // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data

            if (myReader.Read())
            {
                lblStudentDataFromDatabase.Text = "";

                // let's start building a sentence; display "studentId: " and then read the studentId from the database, followed by a break

                lblStudentDataFromDatabase.Text += "studentId: " + myReader["studentId"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "firstName: " + myReader["firstName"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "lastName: " + myReader["lastName"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "address: " + myReader["address"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "city: " + myReader["city"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "state: " + myReader["state"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "zip: " + myReader["zip"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "email: " + myReader["email"].ToString() + "<br />";
            }
            
            // close myReader

            myReader.Close();
        }
        catch (Exception ex)
        {
            lblStudentDataFromDatabase.Text = ex.ToString();
        }
        finally

        // cleanup the garbage

        // call the dispose method of the myCommand

        // dispose of the above command, release all resources, also call the close method (garbage clean-up)

        {
            myCommand.Dispose();
            myConnection.Close();
        }
    }

    protected void DisplayDataForStudentVersion2(int intWhichStudentId)
    {
        // create an instance of a SqlConnection object so that we konw where to find our database that we want to work with

        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["portfolio_tt240016_p21ConnectionString"].ToString());

        // create an instance of a SqlCommand object so that we know what SQL to execute against the database

        SqlCommand myCommand = new SqlCommand("SELECT * FROM [Student] WHERE ([studentId] = @studentId)", myConnection);

        // add any necessary parameters that the SQL command needs to guard against SQL injection

        myCommand.Parameters.Add("@studentId", SqlDbType.Int).Value = intWhichStudentId;
        try
        {
            // let's open the database connection

            myConnection.Open();

            // create an instance of a SqlDataReader object so that we can read the data from the database

            SqlDataReader myReader = myCommand.ExecuteReader();

            // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data

            if (myReader.Read())
            {
                lblStudentDataFromDatabase.Text = "";

                // let's start building a sentence; display "studentId: " and then read the studentId from the database, followed by a break

                lblStudentDataFromDatabase.Text += "studentId: " + myReader["studentId"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "firstName: " + myReader["firstName"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "lastName: " + myReader["lastName"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "address: " + myReader["address"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "city: " + myReader["city"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "state: " + myReader["state"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "zip: " + myReader["zip"].ToString() + "<br />";
                lblStudentDataFromDatabase.Text += "email: " + myReader["email"].ToString() + "<br />";
            }

            // close myReader

            myReader.Close();
        }
        catch (Exception ex)
        {
            lblStudentDataFromDatabase.Text = ex.ToString();
        }
        finally

        // cleanup the garbage

        // call the dispose method of the myCommand

        // dispose of the above command, release all resources, also call the close method (garbage clean-up)

        {
            myCommand.Dispose();
            myConnection.Close();
        }
    }


    protected void DisplayDataForStudentVersion3(int intWhichStudentId)
    {
        // create an instance of a SqlConnection object so that we konw where to find our database that we want to work with

        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["portfolio_tt240016_p21ConnectionString"].ToString());

        // create an instance of a SqlCommand object so that we know what SQL to execute against the database

        SqlCommand myCommand = new SqlCommand("SELECT * FROM [Student] WHERE ([studentId] = @studentId)", myConnection);

        // add any necessary parameters that the SQL command needs to guard against SQL injection

        myCommand.Parameters.Add("@studentId", SqlDbType.Int).Value = intWhichStudentId;
        try
        {
            // let's open the database connection

            myConnection.Open();

            // create an instance of a SqlDataReader object so that we can read the data from the database

            SqlDataReader myReader = myCommand.ExecuteReader();

            // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data

            if (myReader.Read())
            {
                lblStudentDataFromDatabase.Text = "";

                // let's start building a sentence; display "studentId: " and then read the studentId from the database, followed by a break

                lblStudentDataFromDatabase.Text += "studentId: " + myReader["studentId"].ToString() + "<br />";

                // conditionally display the name if option 1, 2, or 3 is selected

                if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    lblStudentDataFromDatabase.Text += "firstName: " + myReader["firstName"].ToString() + "<br />";
                    lblStudentDataFromDatabase.Text += "lastName: " + myReader["lastName"].ToString() + "<br />";
                }

                // conditionally, display the address if option 2 or 3 is selected
                if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    lblStudentDataFromDatabase.Text += "address: " + myReader["address"].ToString() + "<br />";
                    lblStudentDataFromDatabase.Text += "city: " + myReader["city"].ToString() + "<br />";
                    lblStudentDataFromDatabase.Text += "state: " + myReader["state"].ToString() + "<br />";
                    lblStudentDataFromDatabase.Text += "zip: " + myReader["zip"].ToString() + "<br />";
                }



                // conditonally, display the email if option 3 is selected
                if (rblWhichAttribute.SelectedValue == "3")
                {
                    lblStudentDataFromDatabase.Text += "email: " + myReader["email"].ToString() + "<br />";
                }
                
            }

            // close myReader

            myReader.Close();
        }
        catch (Exception ex)
        {
            //lblStudentDataFromDatabase.Text = ex.ToString();
            lblError.Text = "<br /><br />DisplayDataForStudentVersion3: " + ex.ToString() + "<br />";
        }
        finally

        // cleanup the garbage

        // call the dispose method of the myCommand

        // dispose of the above command, release all resources, also call the close method (garbage clean-up)

        {
            myCommand.Dispose();
            myConnection.Close();
        }
    }











    protected void rblWhichAttribute_SelectedIndexChanged(object sender, EventArgs e)
    {
        DisplayDataForStudentVersion3(Convert.ToInt32(ddlStudentList.SelectedValue));
    }
}