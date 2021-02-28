using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_E1P2Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        // clear each click

       
        lblOutput.Text = "";

        // setting up variables

        int intAge = Convert.ToInt32(txtAge.Text); //have to convert this to an int so we can use it as a comparison later on for the ability to buy alcohol

        lblOutput.Text += txtName.Text + " is " + Convert.ToString(txtAge.Text) + " "; // simple enough, had to convert it to a string for this line just so it displays it as a text-based property

        //setting up the logic behind the ability to buy alcohol
        if (intAge >= 21)
        {
            lblOutput.Text += "and CAN buy alcohol!" + "<br />"; // adding breaks because after this it will go onto the next line
        }
        else // if they can't do the above, they must be the below
        {
            lblOutput.Text += "and CANNOT buy alcohol!" + "<br />"; // appending both values so it adds to the line writing than overwriting it
        }

        lblOutput.Text += "<br />"; // creating the blank line between the sentence and the next output

        int intCount = 1; //will need this count up by 1 until we reach the number inputted (intAge)
        while (intCount <= intAge) // our comparison/logic, tells it to loop until we reach desired number
        {
            lblOutput.Text += intCount.ToString() + " "; // display the numbers it's counting up by
            intCount++; // counts up by 1
            // http://cob.ohio.edu/matthewsk/mis3200/files/Generic_For_Loops.pdf
            if (intCount % 5 == 0) // this will break after each number that is divisible by 5 (5 on each line)
            {
                lblOutput.Text += "<br />";
            }
        }
        







    }
}