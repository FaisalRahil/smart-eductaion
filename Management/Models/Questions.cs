﻿using System;
using System.Collections.Generic;

namespace Management.Models
{
    public partial class Questions
    {
        public Questions()
        {
            Answers = new HashSet<Answers>();
        }

        public long Id { get; set; }
        public long? ExamId { get; set; }
        public int? Number { get; set; }
        public int? Points { get; set; }
        public long? CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public long? ModifiedBy { get; set; }
        public short? Status { get; set; }

        public Exams Exam { get; set; }
        public ICollection<Answers> Answers { get; set; }
    }
}
