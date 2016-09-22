using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FMS.Models
{
    public class System
    {
        [Key]
        public int Id { get; set; }

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