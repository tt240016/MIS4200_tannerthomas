using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MIS3200_Hw22Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
    {
        cbCustomerDetails.Checked = false;

        if (ddlProducts.SelectedItem.Text == "- Choose a product -")
        {
            pnlOrder.Visible = false;
            cbCustomerDetails.Visible = false;
            cbCustomerDetails.Checked = false;
        }
        else
        {
            pnlOrder.Visible = true;
            DisplayATable();
            cbCustomerDetails.Visible = true;
        }
    }

    protected string DisplayProductData()
    {
        string strDataThatWeWillReturn = "";
        string strConnString = "portfoliott240016spicesuppliesConnectionString";
        string strCommand = "SELECT Customer.customerId, Customer.firstName, Customer.lastName, Customer.city, Customer.country, [Order].orderNumber, [Order].orderDate, OrderItem.quantity, [Order].orderid, OrderItem.productId FROM Customer INNER JOIN [Order] ON Customer.customerId = [Order].customerId INNER JOIN OrderItem ON [Order].orderid = OrderItem.orderId WHERE (OrderItem.productId = @productID)";
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[strConnString].ToString());
        SqlCommand myCommand = new SqlCommand(strCommand, myConnection);
        myCommand.Parameters.Add("@productId", SqlDbType.Int).Value = ddlProducts.SelectedValue;

        try
        {
            myConnection.Open();
            SqlDataReader myReader = myCommand.ExecuteReader();
            while (myReader.Read()) 
            {
                // creating the table for the db
                // creating the row
                strDataThatWeWillReturn += "<tr>";
                strDataThatWeWillReturn += "<td>" + myReader["orderNumber"].ToString() + "</td>";
                strDataThatWeWillReturn += "<td>" + myReader["orderDate"].ToString().Replace("12:00:00 AM", "") + "</td>";
                strDataThatWeWillReturn += "<td>" + myReader["quantity"].ToString() + "</td>";

                if (cbCustomerDetails.Checked == true)
                {
                    strDataThatWeWillReturn += "<td>" + myReader["lastName"].ToString() + ", " + myReader["firstName"].ToString() + "<br />" + myReader["city"].ToString() + myReader["country"].ToString();
                }


                // end the loop
                strDataThatWeWillReturn += "</tr>";

            }
        }
        catch (Exception ex)
        {
            lblError.Text = "<br /><br /> ERROR: " + ex.ToString() + "<br />";
            
        }
        finally
        {
            // clean up garbage and close everything up
            myCommand.Dispose();
            myConnection.Close();
        }

        return strDataThatWeWillReturn;
    }

    protected void DisplayATable()
    {
        string strTable = "";
        strTable = "<table style='boarder-collapse; collapse;'>";

        //header
        strTable += "<tr>";
        if (cbCustomerDetails.Checked == true)
        {
            strTable += "<th>Order Number</th>";
            strTable += "<th>Order Date</th>";
            strTable += "<th>Quantity</th>";
            strTable += "<th>Customer Details </th>";
        }
        else
        {
            strTable += "<th>Order Number</th>";
            strTable += "<th>Order Date</th>";
            strTable += "<th>Quantity</th>";
        }

        strTable += "</tr>";

        strTable += DisplayProductData();

        strTable += "</table>";

        strTable = strTable.Replace("<td>", "<td align=center style='border:solid 1px black; padding: 5px;'>");
        lblDetails.Text = strTable;
    }

    protected void cbCustomerDetails_CheckedChanged(object sender, EventArgs e)
    {
        DisplayATable();
    }
}