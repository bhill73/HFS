using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using Repository.Pattern.Ef6;
using System.IO;

namespace HFS.Entities.Models
{
    public class LotsContext : DataContext
    {
        static LotsContext()
        {
#if DEBUG
            Database.SetInitializer<LotsContext>(new CreateInitializer());
#else
                    Database.SetInitializer<MyDbContext> (new CreateInitializer ());
#endif
        }

        public LotsContext()
            : base("name=LotsContext")
        {
        }

        public void Seed(LotsContext context)
        {
            //context.Database.ExecuteSqlCommand(
            //    File.ReadAllText(@"C: \Users\dwbhill\Documents\Visual Studio 2015\Projects\HFS\HFS\Resources\create_data.sql"));

        }


        public virtual DbSet<Account> Account { get; set; }
        public virtual DbSet<Basket> Basket { get; set; }
        public virtual DbSet<Cash> Cash { get; set; }
        public virtual DbSet<Dividend> Dividend { get; set; }
        public virtual DbSet<Equity> Equity { get; set; }
        public virtual DbSet<ExpenseCode> ExpenseCode { get; set; }
        public virtual DbSet<Lot> Lot { get; set; }
        public virtual DbSet<Portfolio> Portfolio { get; set; }
        public virtual DbSet<Quote> Quote { get; set; }
        public virtual DbSet<Symbol> Symbol { get; set; }
        public virtual DbSet<System> System { get; set; }


        private class CreateInitializer : CreateDatabaseIfNotExists<LotsContext>
        {
            protected override void Seed(LotsContext context)
            {

                context.Seed(context);

                base.Seed(context);
            }
        }


    }
}
