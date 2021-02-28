using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Course
    {
        public int courseID { get; set; }
        public string description { get; set; }
        public DateTime beginDate { get; set; }
        public DateTime endDate { get; set; }





        // one to many for professor, each course can only have one professor
        public ICollection<Enrollment> enrollment { get; set; }

        public int professorID { get; set; }
        public virtual Professor professor { get; set; }
    }
}