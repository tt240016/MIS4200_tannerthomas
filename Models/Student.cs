using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Student
    {
        public int studentID { get; set; }

        public string studentFirst { get; set; }
        public string studentLast { get; set; }
        public string studentEmail { get; set; }
        public string studentPhone { get; set; }

        public string studentFull
        {
            get
            {
                return studentLast + ", " + studentFirst;
            }
        }

        public int courseID { get; set; }

        // many to many

        public ICollection<Enrollment> enrollment { get; set; }
    }
}