using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Data.SqlClient; 
using System.Configuration;

public partial class MIS3200_Examples_IC22Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ddlSuppliers_SelectedIndexChanged(object sender, EventArgs e)
    {
        // did the user give me a valid supplier
        if (ddlSuppliers.SelectedItem.Text == "- Choose a Supplier -")
        {
            // no supplier was selected
            lblProducts.Text = "";
        }
        else
        {
            // a good supplier was selected

          
            // -----MUST CHANGE THESE VALUES!!!-----
            string strConnectionStringName = "portfoliott240016spicesuppliesConnectionString";
            string strSQLStatement = "SELECT unitPrice, productName, package, isDiscontinued, supplierId FROM Product WHERE (supplierId = @supplierId)";

            // -----LEAVE THESE ALONE!!! -----
            //create an instance of a SqlConnection object so that we know where to find our database that we want to work with
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[strConnectionStringName].ToString());
            //create an instance of a SqlCommand object so that we know what SQL to execute against the database
            SqlCommand myCommand = new SqlCommand(strSQLStatement, myConnection);

            // add parameters (ONLY add this if you're using parameters in your SQL statement)
            myCommand.Parameters.Add("@supplierId", SqlDbType.Int).Value = ddlSuppliers.SelectedValue;
            // Leave the @ before the name of each parameter (you can copy/paste additional lines - one parameter per line of code)
            // SqlDbType.Int should be changed based on the type of your data
            // ddlName.SelectedValue could also be a Textbox or other user input OR it could come from a parameter in the method call
            // REMEMBER: validate your data before sending it to the database!!!!!

            try
            {
                // let's open the database connection
                myConnection.Open();
                // create an instance of a SqlDataReader object so that we can read the data from the database
                SqlDataReader myReader = myCommand.ExecuteReader();
                // if the myReader has any data, which we determine by calling the myReader.Read() method, then we can read the data
                // use IF when you expect your SQL statement to return ONE row
                // use WHILE if you expect your SQL statement to return MULTIPLE rows
                if (myReader.Read())
                {
                    // this is where the database work gets done...
                    // fields can be references using myReader["fieldName"].ToString()

                }
                // close myReader
                myReader.Close();
            }
            catch (Exception ex)
            {
                // an error occured, output it to the form
                lblError.Text = "<br /><br />ERROR: " + ex.ToString() + "<br />";
            }
            finally
            {
                // cleanup our garbage!
                // call the dispose method of the myCommand
                myCommand.Dispose();
                // call the close method of the myConnection - critical!!!
                myConnection.Close();
            }




        }          
    }
}