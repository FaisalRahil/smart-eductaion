﻿using System;
using System.Collections.Generic;

namespace Management.Models
{
    public partial class UnknownNumber
    {
        public int Id { get; set; }
        public string Code { get; set; }
        public int? Count { get; set; }
        public DateTime? CreatecdOn { get; set; }
        public short? Status { get; set; }
    }
}