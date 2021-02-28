using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Professor
    {
        public int professorID { get; set; }

        public string professorFirst { get; set; }
        public string professorLast { get; set; }
        public string professorEmaail { get; set; }
        public string professorPhone { get; set; }

        public string professorFull
        {
            get
            {
                return professorLast + ", " + professorFirst;
            }
        }

        // one to many; professor can have multiple courses but one course cannot have multiple professors
        public ICollection<Course> course { get; set; }
    }
}