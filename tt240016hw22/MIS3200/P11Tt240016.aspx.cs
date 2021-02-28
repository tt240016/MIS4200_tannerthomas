using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_P11Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // comments (any length of wording)...
        /*
           these comments can exist over
           multiple lines
         */

        /* examples of common data types
        short -32,768 .. 32,767
        ushort 0 .. 65,535
     >  int -2,147,483,648 .. 2,147,483,647
        uint 0 .. 4,294,967,295
        long -9,223,372,036,854,775,808 .. 9,223,372,036,854,775,807
        ulong 0 .. 18,446,744,073,709,551,615
        float -3.402823e38 .. 3.402823e38 (7 decimals of precision)
        double -1.79769313486232e308 .. 1.79769313486232e308 (15 decimals of precision)
     >  decimal -79228162514264337593543950335 .. 79228162514264337593543950335 (-7.9 x 10^28 .. 7.9 x 10^28) (28 decimals of precision)
        char A Unicode character (here is a good example of unicode characters: http://unicode-table.com)
     >  string A string of Unicode characters.
     >  bool True or False.
        */


        // example of variables
        int intAnswerToEverything = 42;

        lblOutput.Text = intAnswerToEverything.ToString();

        intAnswerToEverything = 52;

        lblOutput.Text = intAnswerToEverything.ToString();

        string strMyName = "Tanner";

        lblOutput.Text = strMyName;

        int intValueA = 0;
        int intValueB = 0;
        int intCalculatedValue = 1000;

        // let's perform addition
        intCalculatedValue = intValueA + intValueB;

        lblOutput.Text = intCalculatedValue.ToString();

        // let's modify the values of A and B
        intValueA = 10;
        intValueB = 20;

        // re-calculate the addition
        intCalculatedValue = intValueA + intValueB;

        // re-assign the output
        lblOutput.Text = intCalculatedValue.ToString();


    }

    protected void btnDoAddition_Click(object sender, EventArgs e)
    {
        //lblOutput.Text = txtValueA.Text;

    

        try
        {
            /*
            int intValueA = 0;
            int intValueB = 0;
            int intCalculatedValue = 0;

            intValueA = Convert.ToInt32(txtValueA.Text);
            intValueB = Convert.ToInt32(txtValueB.Text);

            // let's perform addition
            intCalculatedValue = intValueA + intValueB;

            // assign the variable to the output
            lblOutput.Text = intCalculatedValue.ToString();
            */

            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decCalculatedValue = 0m;

            // convert the value in the textbox to a decimal and assign it to the appropriate variable
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            // let's perform addition
            decCalculatedValue = decValueA + decValueB;

            // assign the variable to the output
            lblOutput.Text = decCalculatedValue.ToString();

        }
        catch (Exception)
        {
            lblOutput.Text = "Please enter numeric values in the textbox!";
            //throw;
        }

    }
}