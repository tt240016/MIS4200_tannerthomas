using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_Examples_PracticeDay1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRepeat_Click(object sender, EventArgs e)
    {
        // clear third label so it starts fresh
        lblRepeatOutput.Text = "";

        // copy what is typed in the textboxes to the first two output labels
        lblNameOutput.Text = txtName.Text;
        lblNumberOutput.Text = txtAmount.Text;

        // create variables to hold the input from the user (textboxes)
        string strName = "";
        int intNumber = 0;

        try
        {
            // store input from user
            strName = txtName.Text;
            intNumber = Convert.ToInt32(txtAmount.Text); // potential to throw an error here

            // determine which message to display based on input given
            if (intNumber <= 0)
            {
                lblRepeatOutput.Text = "Invalid input! Number of times must be greater than 0.";
            }
            else if (intNumber > 25)
            {
                lblRepeatOutput.Text = "That's too many times! Number of times should stay below 25.";
            }
            else // this only occurs if intNumber is between 0 and 25
            {
                // loop starts at 1 and continues until it reaches the given number (2nd textbox)
                for (int i = 1; i <= intNumber; i++)
                {
                    // Format of output should be #: NAME (where # of times we've printed the name)
                    lblRepeatOutput.Text += i.ToString() + ": " + strName.ToUpper() + "<br />";
                }
            }
        }
        catch (Exception)
        {
            // most likely way to get here is anything that can't be converted to an integer (decimals or strings)
            
        }

        // clear the input from both textboxes
        txtName.Text = "";
        txtAmount.Text = "";


    }
}