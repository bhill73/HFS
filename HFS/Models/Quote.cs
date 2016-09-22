using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Quote
    {
        [Key]
        public int Id { get; set; }

        //public int EquityId { get; set; }

        //[ForeignKey("EquityId")]
        //public virtual Equity Equity { get; set; }

        public string Symbol { get; set; }

        [Display(Name = "Last" )]
        public string Q_Last { get; set; }

        [Display(Name = "Change")]
        public string Q_Change { get; set; }

        [Display(Name = "52Wk High")]
        public string Q_52Wk_High { get; set; }

        [Display(Name = "52Wk Low")]
        public string Q_52Wk_Low { get; set; }

        public string PEG { get; set; }

        public string PE { get; set; }

    }
}