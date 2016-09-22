using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using Repository.Pattern.Ef6;
using System.IO;

namespace HFS.Entities.Models
{

    public partial class HFSContext : DataContext
    {
        static HFSContext()
        {
#if DEBUG
            Database.SetInitializer<HFSContext>(new CreateInitializer());
#else
                    Database.SetInitializer<MyDbContext> (new CreateInitializer ());
#endif

        }

        public HFSContext()
            : base("name=HFSContext")
        {
        }

        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
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

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }

        public void Seed(HFSContext context)
        {
            //context.Database.ExecuteSqlCommand(
            //    File.ReadAllText(@"C: \Users\dwbhill\Documents\Visual Studio 2015\Projects\HFS\HFS\Resources\create_data.sql"));

        }

        public class DropCreateIfChangeInitializer : DropCreateDatabaseIfModelChanges<HFSContext>
        {
            protected override void Seed(HFSContext context)
            {
                context.Seed(context);
                base.Seed(context);
            }
        }

        public class CreateInitializer : CreateDatabaseIfNotExists<HFSContext>
        {
            protected override void Seed(HFSContext context)
            {

                context.Seed(context);

                base.Seed(context);
            }
        }

        public class CreateAlways : DropCreateDatabaseAlways<HFSContext>
        {
            protected override void Seed(HFSContext context)
            {
                context.Seed(context);

                base.Seed(context);
            }
        }


    }
}
