using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;


using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using HFS.Service;
using HFS.Service.Services;
using Repository.Pattern.DataContext;
using Repository.Pattern.Ef6;
using Repository.Pattern.Infrastructure;
using Repository.Pattern.Repositories;
using Repository.Pattern.UnitOfWork;
using Service.Pattern;

namespace HFS.Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void LotsActive()
        {
            using (IDataContextAsync context = new HFSContext())
            {
                using (IUnitOfWorkAsync unitofWork = new UnitOfWork(context))
                {
                    IRepositoryAsync<Lot> lotsRepo = new Repository<Lot>(context, unitofWork);
                    var temp = "";
                    lotsRepo.GetActiveLots("adfAA").ToList().ForEach(x =>
                    {
                        temp += x.Account.Name;
                    });
                }
            }
        }

        [TestMethod]
        public void CheckActiveLots()
        {
            using (IDataContextAsync context = new HFSContext())
            {
                using (IUnitOfWorkAsync unitofWork = new UnitOfWork(context))
                {
                    var ls = new LotService(new Repository<Lot>(context, unitofWork));
                    var lst = ls.GetLots(true, "asdfasdfsdfawe f");

                    Assert.IsTrue(lst.Count() == 84);

                }
            }
        }

    }
}
