using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS3200_examples_grade_calc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculateGrade_Click(object sender, EventArgs e)
    {
        /* First step is to think about what you want to do, that is, your "algorithm"
         * 
         * Step 1: Declare variables (generally, 1 per input and 1 per output)
         * Step 2: Store input from the user
         * Step 3: Perform calculations (may require more variables)
         * Step 4: Output results
         * 
         * */

        // Declare variable (1 per input and 1 per output)
        // *** You can always add more variables later!

        decimal decPreps = 0m;
        decimal decInClass = 0m;
        decimal decHomework = 0m;
        decimal decExams = 0m;
        decimal decFinalProject = 0m;

        string strGradeReport = "";

        /* Store input from the user
         * Remember to convert! All input in Textboxes starts as a string
         * Typically, a try/catch would surround conversions, but the validators 
         * should have caught all the "bad" input
         */

        decPreps = Convert.ToDecimal(txtPreps.Text);
        decInClass = Convert.ToDecimal(txtInClass.Text);
        decHomework = Convert.ToDecimal(txtHomework.Text);
        decExams = Convert.ToDecimal(txtExams.Text);
        decFinalProject = Convert.ToDecimal(txtFinalProject.Text);
        //decHomework = ?
        //decExams = ?
        //decFinalProject = ?

        /* Perform calculations (might need more variables)
         * 
         * For this application, we want to calculate the points from
         * each of the 5 categories and add them together to the final grade
         */

        decimal decPrepPoints = decPreps * 0.15m; // 15% is 0.15m (remember m for all decimals!)
        decimal decInClassPoints = decInClass * 0.05m;
        decimal decHomeworkPoints = decHomework * 0.20m;
        decimal decExamPoints = decExams * 0.45m;
        decimal decFinalProjectPoints = decFinalProject * 0.15m;
        //decimal decHomeworkPoints = ?
        //decimal decExamPoints ?
        //decimal decFinalProjectPoints = ?

        decimal decFinalGrade = decPrepPoints + decInClassPoints + decHomeworkPoints + decExamPoints + decFinalProjectPoints;
        //decimal decFinalGrade = ?

        // Build output string
        strGradeReport += "Prep Points: " + decPrepPoints.ToString();
        strGradeReport += "<br />"; // placing HTML line break on its own line so it stands out and I know it is there
        strGradeReport += "In Class Points: " + decInClassPoints.ToString();
        strGradeReport += "<br />";
        strGradeReport += "Homework Points: " + decHomeworkPoints.ToString();
        strGradeReport += "<br />";
        strGradeReport += "Exam Points: " + decExamPoints.ToString();
        strGradeReport += "<br />";
        strGradeReport += "Final Project Points: " + decFinalProjectPoints.ToString();
        strGradeReport += "<br />";
        strGradeReport += "<br />";
        strGradeReport += "Final Grade: " + decFinalGrade.ToString();
        strGradeReport += "<br />";
        strGradeReport += "Letter Grade: ";

        // Determine letter grade
        /* Here you will need to add the logic to determine the letter grade.
         * This will be a series of decisions that are made based on the decFinalGrade
         * value from above.
         * Grading Scale:
            93%-100% = A
            90%-92% = A-
            87%-89% = B+
            83%-86% = B
            80%-82% = B-
            77%-79% = C+
            73%-76% = C
            70%-72% = C-
            67%-69% = D+
            63%-66% = D
            60%-62% = D-
            59% and below = F
         */

        if (decFinalGrade >= 90m)
        {
            strGradeReport += "A";
        }

        else if (decFinalGrade >= 80m && decFinalGrade < 90m)
        {
            strGradeReport += "B";
        }

        else if (decFinalGrade >= 70m && decFinalGrade < 80m)
        {
            strGradeReport += "C";
        }

        else if (decFinalGrade >= 60m && decFinalGrade < 70m)
        {
           strGradeReport += "D";
        }
        
        else if (decFinalGrade < 60m)
        {
            strGradeReport += "F";
        }
        // Output results to Label
        lblGradeReport.Text = strGradeReport;
        
    }
}