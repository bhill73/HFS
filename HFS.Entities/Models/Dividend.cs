using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{


    [Table("Dividend")]
    public partial class Dividend : Entity
    {
        public int Id { get; set; }

        public int EquityId { get; set; }

        public decimal Total { get; set; }

        public virtual Equity Equity { get; set; }
    }
}
