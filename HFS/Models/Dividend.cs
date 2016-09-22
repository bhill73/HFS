using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Dividend
    {
        public int Id { get; set; }

        public int EquityId { get; set; }   

        [ForeignKey("EquityId")]
        public virtual Equity Equity { get; set; }

        public decimal Total { get; set; }
    }
}