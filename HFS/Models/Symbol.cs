using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace HFS.Models
{
    public class Symbol
    {
        [Key]
        public int Id { get; set; }

        [Display(Name ="Equity")]
        public string SymbolName { get; set; }

        public string Description { get; set; }

    }
}