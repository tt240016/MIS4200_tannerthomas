using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Enrollment
    {
        public int enrollmentID { get; set; }

        public int classLevel { get; set; }

        public string classRequired { get; set; }

        public int courseID { get; set; }
        public virtual Course course { get; set; }

        public int studentID { get; set; }
        public virtual Student student { get; set; }
    }
}