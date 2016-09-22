using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Portfolio
    {
        [Key]
        public int Id { get; set; }

        [Display(Name="Portfolio")]
        public string Symbol { get; set; }

        public string Name { get; set; }
    }
}