using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;

namespace HFS.Models
{
    public class Basket
    {
        [Key]
        public int Id { get; set; }

        [Display(Name ="Basket")]
        public string Symbol { get; set; }

        public string Name { get; set; }

        public decimal BiMoIx { get; set; }

        public decimal SeSoIx { get; set; }

        public decimal Protection { get; set; }


    }
}