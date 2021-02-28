using MIS4200_tt240016.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.DAL__Data_Access_Layer_
{
    public class MIS4200SDContext   :   DbContext
    {
        public MIS4200SDContext() : base("name=DefaultConnection")
        {
            // method that doesn't have a return type = constructor
        }
        // group of customer objects
        public DbSet<Customer> customer { get; set; }
        public DbSet<Orders> orders { get; set; }
        public DbSet<Product> product { get; set; }
        public DbSet<LineItem> lineItem { get; set; }

        public DbSet<Student> student { get; set; }
        public DbSet<Course> course { get; set; }
        public DbSet<Enrollment> enrollment { get; set; }
        public DbSet<Professor> professor { get; set; }
    }
}