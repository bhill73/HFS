using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("Symbol")]
    public partial class Symbol : Entity
    {
        public int Id { get; set; }

        public string SymbolName { get; set; }

        public string Description { get; set; }
    }
}
