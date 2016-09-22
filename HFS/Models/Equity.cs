using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Equity
    {
        [Key]
        public int Id { get; set; }

        public string Symbol { get; set; }

        public string Name { get; set; }

        public int BasketId { get; set; }

        [ForeignKey("BasketId")]
        public virtual Basket Basket { get; set; }

        public bool Show { get; set; }

        public Decimal Protection { get; set; }

        public Decimal BiMoIx { get; set; }

        public Decimal SeSoIx { get; set; }


    }
}