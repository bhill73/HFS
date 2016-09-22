using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;


namespace HFS.Entities.Models
{
    [Table("ExpenseCode")]
    public partial class ExpenseCode : Entity
    {

        public int Id { get; set; }

        public string TenantId { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Category { get; set; }

        public string IO { get; set; }
    }
}
