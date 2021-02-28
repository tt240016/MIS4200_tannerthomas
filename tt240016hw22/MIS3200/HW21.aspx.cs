using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MIS3200_HW21 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCourse.Items.Clear();
        ddlCourse.Enabled = true;
        ddlCourse.Items.Add("- Choose a course-");
    }

    protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCourse.Text == "- Choose a course -")
        {
            pnlDetails.Visible = false;
        }
        else
        {
            pnlDetails.Visible = true;
            DisplayData(Convert.ToInt32(ddlStudent.SelectedValue), Convert.ToInt32(ddlCourse.SelectedValue));
        }
    }

    protected void DisplayData(int StudentId, int CourseId)
    {
        string strConnectionString = "portfolio_tt240016_p21ConnectionString";
        string strSqlCommand = "SELECT Student.studentId, Student.lastName + ', ' + Student.firstName AS studentFullName, Student.address, Student.city, Student.state, Student.zip, Student.email, Course.courseId, Course.courseName, Course.courseDescription, Schedule.letterGrade, Instructor.instructorId, Instructor.lastName + ', ' + Instructor.firstName AS instructorFullName, Instructor.officePhoneNumber, Instructor.email AS instructorEmail FROM Course INNER JOIN Instructor ON Course.instructorId = Instructor.instructorId INNER JOIN Schedule ON Course.courseId = Schedule.courseId INNER JOIN Student ON Schedule.studentId = Student.studentId WHERE (Student.studentId = @studentId) AND (Course.courseId = @courseId)";
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings[strConnectionString].ToString());
        SqlCommand myCommand = new SqlCommand(strSqlCommand, myConnection);
        myCommand.Parameters.Add("@studentId", SqlDbType.Int).Value = StudentId;
        myCommand.Parameters.Add("@courseId", SqlDbType.Int).Value = CourseId;


        try
        {
            myConnection.Open();
            SqlDataReader myReader = myCommand.ExecuteReader();
            
            if (myReader.Read())
            {
                // this will fill in the information for the student details
                lblFullName.Text = myReader["studentFullName"].ToString();
                lblAddress.Text = myReader["address"].ToString() + "<br />" + myReader["city"].ToString() + ", " + myReader["state"].ToString() + "<br />" + myReader["zip"].ToString() + "<br />";
                lblStudentEmail.Text = myReader["email"].ToString();

                //this will find in the information for the course information
                lblCourseNumber.Text = myReader["courseName"].ToString();
                lblCourseName.Text = myReader["courseDescription"].ToString();
                lblInstructor.Text = myReader["instructorFullName"].ToString();
                lblInstructorEmail.Text = myReader["instructorEmail"].ToString();
                lblPhoneNumber.Text = myReader["officePhoneNumber"].ToString();

                //This will fill in the letter grade
                lblGrade.Text = "";
                if (myReader["letterGrade"].ToString() == "")
                {
                    lblGrade.Text = "Unknown";
                }
                else
                {
                    lblGrade.Text += myReader["letterGrade"].ToString() + "<br />";
                }
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "<br /><br /> ERROR:" + ex.ToString() + "<br />";
            
        }
        finally
        {
            // DON'T MIND ME, JUST DOING MY DUTY AS A GARBAGE MAN TO CLEAN UP MY TRASH
            myCommand.Dispose();
            myConnection.Close();
        }
    }


    protected void lbInstructor_Click(object sender, EventArgs e)
    {
        if (lblInstructorEmail.Visible)
        {
            lblInstructorEmail.Visible = false;
            lbInstructor.Text = "Show contact info!";
        }
        else
        {
            lblInstructorEmail.Visible = true;
            lbInstructor.Text = "Hide contact info!";
        }

        if (lblPhoneNumber.Visible)
        {
            lblPhoneNumber.Visible = false;
            lbInstructor.Text = "Show contact info!";

        }
        else
        {
            lblPhoneNumber.Visible = true;
            lbInstructor.Text = "Hide contact info!";
        }
    }
}