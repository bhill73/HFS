using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class ExpenseCode
    {
        [Key]
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Category { get; set; }

        public string IO { get; set; }

    }
}