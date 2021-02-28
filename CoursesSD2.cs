using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class CoursesSD2
    {
        public int coursesID { get; set; }
        public string description { get; set; }
        public DateTime beginDate { get; set; }
        public DateTime endDate { get; set; }
        public int studentID { get; set; }
        public int professorID { get; set; }

        // many to many for student (each course can have multiple students?
        public ICollection<StudentSD2> student { get; set; }

        // one to many for professor, each course can only have one professor
        public virtual ProfessorSD2 professor { get; set; }

    }
}