using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("System")]
    public partial class System : Entity
    {
        public int Id { get; set; }

        public string TenantId { get; set; }

        public DateTime MyToday { get; set; }

        public decimal PlusMinusDays { get; set; }

        public decimal GoldCoinPrem { get; set; }

        public decimal NearLowInd { get; set; }

        public decimal NearHighInd { get; set; }

        public decimal ProtWarningShort { get; set; }

        public decimal ProtWarningLong { get; set; }

        public decimal ProtWarningStart { get; set; }

        public decimal AlertsShowAdvanceDays { get; set; }
    }
}
