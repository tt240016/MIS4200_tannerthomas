using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_Hw11Tt240016 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        decimal decValueA = 0;
        decimal decValueB = 0;
        decimal decSum = 0;

        try
        {


            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA + decValueB;

            lblAdd.Text = decSum.ToString();
        }
        catch (Exception)
        {
            lblAdd.Text = "Please enter numeric values only!";

        }



    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        decimal decValueA = 0;
        decimal decValueB = 0;
        decimal decSum = 0;

        try
        {


            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA - decValueB;

            lblSubtract.Text = decSum.ToString();
        }
        catch (Exception)
        {
            lblSubtract.Text = "Please enter numeric values only!";

        }
    }

    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        decimal decValueA = 0;
        decimal decValueB = 0;
        decimal decSum = 0;

        try
        {


            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA * decValueB;

            lblMultiply.Text = decSum.ToString();
        }
        catch (Exception)
        {
            lblMultiply.Text = "Please enter numeric values only!";

        }
    }

    protected void btnDivide_Click(object sender, EventArgs e)
 
        {
            decimal decValueA = 0;
            decimal decValueB = 0;
            decimal decSum = 0;

            try
            {


                decValueA = Convert.ToDecimal(txtValueA.Text);
                decValueB = Convert.ToDecimal(txtValueB.Text);

                decSum = decValueA / decValueB;

                lblDivide.Text = decSum.ToString();
            }
        catch (DivideByZeroException)
        {
            lblDivide.Text = "You cannot divide by 0!";
        }
            catch (Exception)
            {
                lblDivide.Text = "Please enter only numeric values!";
        }
 
    }

    protected void btnCompCalc_Click(object sender, EventArgs e)
    {
        decimal decValueA = 0;
        decimal decValueB = 0;
        decimal decSum = 0;

        try
        {
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA + decValueB;

            lblAdd.Text = decSum.ToString();

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA - decValueB;

            lblSubtract.Text = decSum.ToString();

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA * decValueB;

            lblMultiply.Text = decSum.ToString();

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSum = decValueA / decValueB;

            lblDivide.Text = decSum.ToString();


        }
        catch (DivideByZeroException)
        {
            lblDivide.Text = "You cannot divide by 0!";          
        }
        catch (Exception)
        {
            lblAdd.Text = "Please enter only numeric values!";
            lblSubtract.Text = "Please enter only numeric values!";
            lblMultiply.Text = "Please enter only numeric values!";
            lblDivide.Text = "Please enter only numeric values!";
        }
    }


    protected void btnClearValue_Click(object sender, EventArgs e)
    {
        string strClear = "";
        txtValueA.Text = strClear;
        txtValueB.Text = strClear;
        lblAdd.Text = strClear;
        lblSubtract.Text = strClear;
        lblMultiply.Text = strClear;
        lblDivide.Text = strClear;

    }
}
