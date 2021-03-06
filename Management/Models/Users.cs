﻿using System;
using System.Collections.Generic;

namespace Management.Models
{
    public partial class Users
    {
        public long UserId { get; set; }
        public string Name { get; set; }
        public string LoginName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime? CreatedOn { get; set; }
        public long? CreatedBy { get; set; }
        public byte[] Image { get; set; }
        public string Phone { get; set; }
        public DateTime? BirthDate { get; set; }
        public short? State { get; set; }
        public DateTime? LoginTryAttemptDate { get; set; }
        public short? LoginTryAttempts { get; set; }
        public DateTime? LastLoginOn { get; set; }
        public short? Gender { get; set; }
        public short? UserType { get; set; }
    }
}
