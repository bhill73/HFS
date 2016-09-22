using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("Quote")]
    public partial class Quote : Entity
    {
        public int Id { get; set; }

        public string Symbol { get; set; }

        public string Q_Last { get; set; }

        public string Q_Change { get; set; }

        public string Q_52Wk_High { get; set; }

        public string Q_52Wk_Low { get; set; }

        public string PEG { get; set; }

        public string PE { get; set; }

        public decimal LastValue
        {
            get
            {
                decimal val = 0;
                return decimal.TryParse(Q_Last, out val) ? val : 0;
            }
        }
    }
}
