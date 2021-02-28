using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_E1P1Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        


        // declaring variables
        int intGuess = 0;

        // convert the text in a box to an integer
        intGuess = Convert.ToInt32(txtNumber.Text);

        // beginning to write the logic behind the values and guessing

        // this is for values under 71, so it displays the error message 
        if (intGuess < 71)
        {
            lblOutput.Text += Convert.ToString(intGuess) + " is too low!" + "<br />"; //I had to convert it to a string for it to be in text
        }
        else if (intGuess > 71) // same as above, converted to string, but I also had to append it
        {
            lblOutput.Text += Convert.ToString(intGuess) + " is too high!" + "<br />"; //breaks added so it begins a new line
        }
        else // no if statement needed for this because if it's not less than 71 and not above 71, it has to be 71
        {
            lblOutput.Text += Convert.ToString(intGuess) + " is correct!" + "<br />";
        }

        // clear the text boxes each time the button is clicked

        txtNumber.Text = "";
    }
}