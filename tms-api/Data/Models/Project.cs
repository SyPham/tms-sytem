﻿using Data.Interface;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Data.Models
{
   public class Project: IEntity
    {
        public Project()
        {
            CreatedDate = DateTime.Now;
        }
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }
        public string Name { get; set; }
        public bool Status { get; set; }
        [ForeignKey("User")]
        public int CreatedBy { get; set; }
        public int Room { get; set; }
        public virtual Room RoomTable { get; set; }
        public string CreatedByName { get; set; }
        public DateTime CreatedDate { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<Manager> Managers { get; set; } = new List<Manager>();
        public virtual ICollection<TeamMember> TeamMembers { get; set; } = new List<TeamMember>();
        public virtual ICollection<Tutorial> Tutorials { get; set; } = new List<Tutorial>();
        public virtual ICollection<Task> Tasks { get; set; } = new List<Task>();

    }
}
