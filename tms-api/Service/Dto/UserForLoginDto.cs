﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Service.Dto
{
    public class UserForLoginDto
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public int SystemCode { get; set; }
    }
}
