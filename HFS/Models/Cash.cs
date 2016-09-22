using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace HFS.Models
{
    public class Cash
    {
        [Key]
        public int Id { get; set; }

        public int AccountId { get; set; }

        [ForeignKey("AccountId")]
        public virtual Account Account { get; set; }

        public string Code { get; set; }

        public string Ref { get; set; }

        public string Transaction { get; set; }

        public DateTime Date { get; set; }

        public bool X { get; set; }

        public decimal Amount { get; set; }

    }
}