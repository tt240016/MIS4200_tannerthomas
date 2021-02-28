using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_HW12Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuild_Click(object sender, EventArgs e)
    {

        //Variables
        int intRow = 0;
        int intColumn = 0;

        intRow = Convert.ToInt32(txtRows.Text);
        intColumn = Convert.ToInt32(txtColumns.Text);

        //create table
        string strTable = "";

        //design
        //1. Start the HTML table (<table>)
        strTable += "<table style='border-collapse: collapse;'>";

        //2.Loop through the ROWS of the table(first loop starts here!)
        for (int r = 1; r <= intRow; r++)
        {
            if (txtRows.Text == txtColumns.Text)
            {
                strTable += "<tr>";
            }
            else if (r % 2 == 0)
            {
                strTable += "<tr style='background-color: tomato;'>";
            }
            else
            {
                strTable += "<tr>";
            }

          
            //a) Create row start (<tr>)
            

            //b) Loop through the COLUMNS/CELLS of the row (second loop starts here!)

            for (int c = 1; c <= intColumn; c++)
            {
                if (txtColumns.Text != txtRows.Text)
                {
                    strTable += "<td style='border: 1px solid black; padding: 5px;'>" + r.ToString("0") + " , " + c.ToString("0");
                }
                else if (r == c) // they are equal
                {
                    strTable += "<td style='border: 1px solid black; padding: 5px;background:tomato;'>" + r.ToString("0") + " , " + c.ToString("0");
                }
                else if (r + c == intRow + 1)
                {
                    strTable += "<td style='border: 1px solid black; padding: 5px;background:tomato;'>" + r.ToString("0") + " , " + c.ToString("0");
                }
                else
                {
                    strTable += "<td style='border: 1px solid black; padding: 5px;'>" + r.ToString("0") + " , " + c.ToString("0");
                }
                
            }

            // manually end the first table roq (close tr tag)
            strTable += "</tr>";
        }

        strTable += "</table>";

        lblOutput.Text = strTable;
    }
}