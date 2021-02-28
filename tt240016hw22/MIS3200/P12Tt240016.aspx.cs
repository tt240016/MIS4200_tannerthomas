using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_P12Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        // Relational Operators: < > <= >= == !=
        // Logical Operators: && (both are true on each side) || (either side is true (or))

        decimal decTemp = 0m;

        /*
        if (decTemp > 99m)
        {
            lblOutput.Text = "It is very hot today! Message 1";
        }

        if (decTemp != 100m)
        {
            lblOutput.Text = "It is very hot today! Message 2";
        }
        */

        /*
        * if (some condition is true)
        * {
        *   do something
        * }
        * else
        * {
        *   do something else
        *  }
        */


        decTemp = 110m;

        if (decTemp < 30m)
        {
            lblOutput.Text = "It is very cold!";
        }
        else
        {
            lblOutput.Text = "It is not cold!";

        }
        if (decTemp >= 30m && decTemp < 70m)
        {
            lblOutput.Text = "It is moderate!";
        }
        else
        {
            lblOutput.Text = "It is not moderate";
        }

        if (decTemp >= 70m && decTemp < 100m)
        {
            lblOutput.Text = "It is warm!";
        }
        else
        {
            lblOutput.Text = "It is not warm!";
        }

        if (decTemp >= 100m)
        {
            lblOutput.Text = "It is hot!";
        }
        else
        {
            lblOutput.Text = "It is not hot!";
        }


        /*
        * if (some condition is true)
        * {
        *   do something
        * }
        * else if
        * {
        *   do something else
        *  }
        *   else if
        * {
        *   do something else
        *  }
        *   else if
        * {
        *   do something else
        *  }
        *   else if
        * {
        *   do something else
        *  }
        *  and so on
        *  we can terminate the else if whenever we want or we can have a final catch-all
        *  
        *    * if (some condition is true)
        * {
        *   do something
        * }
        * else if
        * {
        *   do something else
        *  }
        *  else
        *  {
        *   do this if other conditions were not met
        *  }
        */


        decTemp = -5m;

        // if the temp is less than 30 degrees, then spell out the cold message
        if (decTemp < 30m)
        {
            lblOutput.Text = "It is very cold!";

            // if the temp is less than 0 degrees, then trigger the alarm
            if (decTemp < 0m)
            {
                //lblOutput.Text += "<br />trigger the alarm";
                lblOutput.Text += "<br />trigger the alarm";
            }


        }

        else if (decTemp >= 30m && decTemp < 70m)
        {
            lblOutput.Text = "It is moderate!";
        }

        else if (decTemp >= 70m && decTemp < 100m)
        {
            lblOutput.Text = "It is warm!";
        }

        else if (decTemp >= 100m && decTemp < 120m)
        {
            lblOutput.Text = "It is hot";
        }

        else
        {
            lblOutput.Text = "danger zone";
        }

        // if the day of the week is Wednesday, then do something


        /*
         * if (decTemp < 30m)
        {
            lblOutput.Text = "It is very cold!";

            if (decTemp < 0m)
            {
                lblOutput.Text = "It is very VERY cold"
            }

        */
        /*
        if (decTemp < 30m && decTemp <0m)
        {
            lblOutput.Text = "It is very VERY cold";
        }
        */

        //loops have a starting poiint and an ending point
        //for loops - when you know the start and ending point - typically used for a known range of values
        //while loops - when you don't know the ending range value, but instead know a condition that should terminate the loop

        /*
         * basic structure of a for loop
         * starting point: int i = 0;
         * testing condition: i < length (while i is less than some value, do the code)
         * i++
         for (int i = 0; i < length; i++)
         {

         }
         */

        lblOutput.Text = "";


        //let's start with the value 1 and display that value 1 through 10 and once we get to 10, stop
        for (int i = 1; i <= 10; i++)
        {
            //lblOutput.Text += i.ToString() + "<br />";
            lblOutput.Text = lblOutput.Text + i.ToString() + "<br />";
        }

        lblOutput.Text = "";

        int intCounter = 0;
        while (intCounter <= 10)
        {
               lblOutput.Text += intCounter.ToString() + "<br />";
               intCounter++;
        }







    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnAddition_Click(object sender, EventArgs e)
    {
        try
        {
            /*
            decimal decValueA = 0m, decValueB = 0m, decCalculcatedValue = 0m;
            //decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueA = decimal.Parse(txtValueA.Text);
            decValueB = decimal.Parse(txtValueB.Text);
            decCalculcatedValue = decValueA + decValueB;
            */
        lblOutput.Text = Convert.ToString(decimal.Parse(txtValueA.Text) + Convert.ToDecimal(txtValueB.Text));
        }
        catch (Exception ex)
        {
            lblOutput.Text = "Please enter a number!<br />";
            //https://msdn.microsoft.com/en-us/library/sa7629ew.aspx
            lblOutput.Text += ex.GetType().Name + "<br />";
            lblOutput.Text += ex.Message;  

            //throw;
        }


    }
}