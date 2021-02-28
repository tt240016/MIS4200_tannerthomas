using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MIS3200_P22T240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOptions.Visible = true;
        btnReset.Visible = true;
        rblWhichAttribute.Visible = true;
        btnDisplayTable.Enabled = false;
        lblTableData.Visible = true;
        //DisplayATableV1();
        //DisplayATableV2();
        //DisplayATableV3();
        //DisplayATableV4();
        //DisplayATableV5();
        //DisplayATableV6();
        //DisplayATableV7();
        //DisplayATableV8();
        DisplayATableV9();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        btnReset.Visible = false;
        lblOptions.Visible = false;
        lblTableData.Text = "";
        lblTableData.Visible = false;
        btnDisplayTable.Enabled = true;
        rblWhichAttribute.Visible = false;
        rblWhichAttribute.SelectedIndex = 2;
    }

    protected void DisplayATableV1()
    {
        string strTable = "";

        //let's build an example of a table with one column and one row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>"; //start the table row
        strTable += "<th>column1</th>"; //start and close the table header for column 1
        strTable += "</tr>"; //close the table row

        //next include a row that contains data
        strTable += "<tr>";
        strTable += "<td>data1</td>"; //start and close the table data for the data that will go under header 1
        strTable += "</tr>";

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void DisplayATableV2()
    {
        string strTable = "";

        //let's build an example of a table with two columns and one row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>"; //start the table row
        strTable += "<th>column1</th>"; //start and close the table header for column 1
        strTable += "<th>column2</th>"; //start and close the table header for column 2
        strTable += "</tr>"; //close the table row

        //next include a row that contains data
        strTable += "<tr>";
        strTable += "<td>data1</td>"; //start and close the table data for the data that will go under header 1
        strTable += "<td>data2</td>"; //start and close the table data for the data that will go under header 2
        strTable += "</tr>";

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void DisplayATableV3()
    {
        /*
        studentId: 71
        firstName: Tamie
        lastName: Accurso
        address: W 105Th Pl
        city: New York
        state: NY
        zip: 10027
        email: ta224850@someSchool.edu
         */

        string strTable = "";

        //let's build an example of a table with two columns and one row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>studentId</th>";
        strTable += "<th>firstName</th>";
        strTable += "<th>lastName</th>";
        strTable += "<th>address</th>";
        strTable += "<th>city</th>";
        strTable += "<th>state</th>";
        strTable += "<th>zip</th>";
        strTable += "<th>email</th>";
        strTable += "</tr>";

        //next include a row that contains data
        strTable += "<tr>";
        strTable += "<td>71</td>";
        strTable += "<td>Tamie</td>";
        strTable += "<td>Accurso</td>";
        strTable += "<td>W 105Th Pl</td>";
        strTable += "<td>New York</td>";
        strTable += "<td>NY</td>";
        strTable += "<td>10027</td>";
        strTable += "<td>ta224850@someSchool.edu</td>";
        strTable += "</tr>";

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void DisplayATableV4()
    {
        /*
        studentId: 71
        firstName: Tamie
        lastName: Accurso
        address: W 105Th Pl
        city: New York
        state: NY
        zip: 10027
        email: ta224850@someSchool.edu
         */

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        /*
        strTable += "<tr>";
        strTable += "<th>studentId</th>";
        strTable += "<th>firstName</th>";
        strTable += "<th>lastName</th>";
        strTable += "<th>address</th>";
        strTable += "<th>city</th>";
        strTable += "<th>state</th>";
        strTable += "<th>zip</th>";
        strTable += "<th>email</th>";
        strTable += "</tr>";
        */

        //next include a row that contains data
        strTable += "<tr>";
        strTable += "<td>71</td>";
        strTable += "<td>Tamie</td>";
        strTable += "<td>Accurso</td>";
        strTable += "<td>W 105Th Pl</td>";
        strTable += "<td>New York</td>";
        strTable += "<td>NY</td>";
        strTable += "<td>10027</td>";
        strTable += "<td>ta224850@someSchool.edu</td>";
        strTable += "</tr>";

        /*
        studentId: 232
        firstName: Merry
        lastName: Alameda
        address: N Paris Ave
        city: St John
        state: VI
        zip: 830
        email: ma191539@someSchool.edu
         */

        //next include another row that contains more row data
        strTable += "<tr>";
        strTable += "<td>232</td>";
        strTable += "<td>Merry</td>";
        strTable += "<td>Alameda</td>";
        strTable += "<td>N Paris Ave</td>";
        strTable += "<td>St John</td>";
        strTable += "<td>VI</td>";
        strTable += "<td>830</td>";
        strTable += "<td>ma191539@someSchool.edu</td>";
        strTable += "</tr>";

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void DisplayATableV5()
    {
        /*
        studentId: 71
        firstName: Tamie
        lastName: Accurso
        address: W 105Th Pl
        city: New York
        state: NY
        zip: 10027
        email: ta224850@someSchool.edu
         */

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>studentId</th>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>firstName</th>";
            strTable += "<th>lastName</th>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>address</th>";
            strTable += "<th>city</th>";
            strTable += "<th>state</th>";
            strTable += "<th>zip</th>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>email</th>";
        }
        strTable += "</tr>";

        //next include a row that contains data
        strTable += "<tr>";
        strTable += "<td>71</td>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>Tamie</td>";
            strTable += "<td>Accurso</td>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>W 105Th Pl</td>";
            strTable += "<td>New York</td>";
            strTable += "<td>NY</td>";
            strTable += "<td>10027</td>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>ta224850@someSchool.edu</td>";
        }
        strTable += "</tr>";

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void DisplayATableV6()
    {

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>studentId</th>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>firstName</th>";
            strTable += "<th>lastName</th>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>address</th>";
            strTable += "<th>city</th>";
            strTable += "<th>state</th>";
            strTable += "<th>zip</th>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>email</th>";
        }
        strTable += "</tr>";

        //next include a row that contains data

        strTable += GetDataForStudentV1();

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected void rblWhichAttribute_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DisplayATableV5();
        //DisplayATableV6();
        //DisplayATableV7();
        //DisplayATableV8();
        DisplayATableV9();
    }

    protected string GetDataForStudentV1()
    {
        string strDataThatWeWillReturn = "";


        string strTable = "";
        strTable += "<tr>";
        strTable += "<td>71</td>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>Tamie</td>";
            strTable += "<td>Accurso</td>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>W 105Th Pl</td>";
            strTable += "<td>New York</td>";
            strTable += "<td>NY</td>";
            strTable += "<td>10027</td>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<td>ta224850@someSchool.edu</td>";
        }
        strTable += "</tr>";

        strDataThatWeWillReturn = strTable;


        return strDataThatWeWillReturn;
    }

    protected void DisplayATableV7()
    {

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>studentId</th>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>firstName</th>";
            strTable += "<th>lastName</th>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>address</th>";
            strTable += "<th>city</th>";
            strTable += "<th>state</th>";
            strTable += "<th>zip</th>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>email</th>";
        }
        strTable += "</tr>";

        //next include a row that contains data

        strTable += GetDataForStudentV2(71);

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected string GetDataForStudentV2(int intWhichStudentId)
    {
        string strDataThatWeWillReturn = "";

        // create an instance of an SqlConnection object so that we know where to find our database that we want to work with (config manager command didn't work)
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["portfolio_tt240016_p22ConnectionString"].ToString());
        // create an instance of an SQL command object so we know what SQL to execute against the database
        SqlCommand myCommand = new SqlCommand("SELECT * FROM Student WHERE studentId = @studentId)", myConnection);
        // add the necessary parameters that the SQL command needs to guard against SQL injection
        myCommand.Parameters.Add("@studentId", SqlDbType.Int).Value = intWhichStudentId;

        try
        {
            // open db connection
            myConnection.Open();
            // create instance of a SqlDataReader object so that we can read from the database
            SqlDataReader myReader = myCommand.ExecuteReader();
            // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data
            if (myReader.Read())
            {
                // this is where the db work gets done...
                strDataThatWeWillReturn = "<tr>";
                // let's start building a sentence; display "studentId: " and then read the studentId from the database and follow
                // with a break
                strDataThatWeWillReturn += "<td>" + myReader["studentId"].ToString() + "</td>";

                // conditionally, display the name if option 1, 2, or 3 is selected
                if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    strDataThatWeWillReturn += "<td>" + myReader["firstName"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["lastName"].ToString() + "</td>";
                    
                }
                if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    strDataThatWeWillReturn += "<td>" + myReader["address"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["city"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["state"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["zip"].ToString() + "</td>";
                }

                // conditionally, display the email if option 3 is selected
                if (rblWhichAttribute.SelectedValue == "3")
                {
                    strDataThatWeWillReturn += "<td>" + myReader["email"].ToString() + "</td>";
                }

                strDataThatWeWillReturn += "</tr>";

            }
            // close myReader
            myReader.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = "<br /><br />GetDataForStudentV2: " + ex.ToString() + "<br />";
        }

        finally
        {
            // clean up the garbage
            // call the dispose method of the myCommand
            myCommand.Dispose();
            // call the close method of the myConnection - critical
            myConnection.Close();
        }

        return strDataThatWeWillReturn;
    }

    protected void DisplayATableV8()
    {

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>studentId</th>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>firstName</th>";
            strTable += "<th>lastName</th>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>address</th>";
            strTable += "<th>city</th>";
            strTable += "<th>state</th>";
            strTable += "<th>zip</th>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>email</th>";
        }
        strTable += "</tr>";

        //next include a row that contains data

        strTable += GetDataForAllStudents();

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }

    protected string GetDataForAllStudents()
    {
        string strDataThatWeWillReturn = "";

        // create an instance of an SqlConnection object so that we know where to find our database that we want to work with (config manager command didn't work)
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["portfolio_tt240016_p22ConnectionString"].ToString());
        // create an instance of an SQL command object so we know what SQL to execute against the database
        SqlCommand myCommand = new SqlCommand("SELECT * FROM Student ORDER BY lastName, firstName", myConnection);
 

        try
        {
            // open db connection
            myConnection.Open();
            // create instance of a SqlDataReader object so that we can read from the database
            SqlDataReader myReader = myCommand.ExecuteReader();
            // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data
            while (myReader.Read())
            {
                // this is where the db work gets done...
                strDataThatWeWillReturn += "<tr>";
                // let's start building a sentence; display "studentId: " and then read the studentId from the database and follow
                // with a break
                strDataThatWeWillReturn += "<td>" + myReader["studentId"].ToString() + "</td>";

                // conditionally, display the name if option 1, 2, or 3 is selected
                if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    strDataThatWeWillReturn += "<td>" + myReader["firstName"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["lastName"].ToString() + "</td>";

                }
                if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
                {
                    // NOTE --- look at how we can possibly deal with "bad data"
                    if(myReader["address"].ToString() =="0")
                    {
                        // make a note that the address doesn't exist
                        strDataThatWeWillReturn += "<td align = center><strong>NO STREET ADDRESS</strong></td>";

                    }
                    else
                    {
                        // display the address as it is recorded in the data
                        strDataThatWeWillReturn += "<td>" + myReader["address"].ToString() + "</td>";
                    }

                    strDataThatWeWillReturn += "<td>" + myReader["address"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["city"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["state"].ToString() + "</td>";
                    strDataThatWeWillReturn += "<td>" + myReader["zip"].ToString() + "</td>";
                }

                // conditionally, display the email if option 3 is selected
                if (rblWhichAttribute.SelectedValue == "3")
                {
                    strDataThatWeWillReturn += "<td>" + myReader["email"].ToString() + "</td>";
                }

                strDataThatWeWillReturn += "</tr>";

            }
            // close myReader
            myReader.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = "<br /><br />GetDataForStudentV2: " + ex.ToString() + "<br />";
        }

        finally
        {
            // clean up the garbage
            // call the dispose method of the myCommand
            myCommand.Dispose();
            // call the close method of the myConnection - critical
            myConnection.Close();
        }

        return strDataThatWeWillReturn;
    }

    protected void DisplayATableV9()
    {

        string strTable = "";

        //let's build an example of a table with two columns and two row of data
        strTable = "<table border=1>";

        //include a row that contains headers
        strTable += "<tr>";
        strTable += "<th>Student Id</th>";

        //conditionally, display the name if option 1, 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "1" || rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>First Name</th>";
            strTable += "<th>Last Name</th>";
        }

        //conditionally, display the address if option 2 or 3 is selected
        if (rblWhichAttribute.SelectedValue == "2" || rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>Address</th>";
            strTable += "<th>City</th>";
            strTable += "<th>State</th>";
            strTable += "<th>Zip</th>";
        }

        //conditionally, display the email if option 3 is selected
        if (rblWhichAttribute.SelectedValue == "3")
        {
            strTable += "<th>Email</th>";
        }
        strTable += "</tr>";

        //next include a row that contains data

        strTable += GetDataForAllStudents();

        //close the table
        strTable += "</table>";

        lblTableData.Text = strTable;
    }


    protected void gvStudentInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}