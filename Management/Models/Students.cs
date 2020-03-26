﻿using System;
using System.Collections.Generic;

namespace Management.Models
{
    public partial class Students
    {
        public Students()
        {
            StudentExam = new HashSet<StudentExam>();
        }

        public long Id { get; set; }
        public long? SchoolId { get; set; }
        public long? AcadimecYearId { get; set; }
        public string Nid { get; set; }
        public string FirstName { get; set; }
        public string FatherName { get; set; }
        public string GrandFatherName { get; set; }
        public string SurName { get; set; }
        public string MatherName { get; set; }
        public string Adrress { get; set; }
        public string Phone { get; set; }
        public bool? Gender { get; set; }
        public long? CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public long? ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public short? Status { get; set; }

        public AcadimacYears AcadimecYear { get; set; }
        public Schools School { get; set; }
        public ICollection<StudentExam> StudentExam { get; set; }
    }
}
