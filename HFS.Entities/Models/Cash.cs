using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;


namespace HFS.Entities.Models
{


    [Table("Cash")]
    public partial class Cash : Entity
    {
        public int Id { get; set; }

        public int AccountId { get; set; }

        public string TenantId { get; set; }

        public string Code { get; set; }

        public string Ref { get; set; }

        public string Transaction { get; set; }

        public DateTime Date { get; set; }

        public string X { get; set; }

        public decimal Amount { get; set; }

        public virtual Account Account { get; set; }
    }
}
