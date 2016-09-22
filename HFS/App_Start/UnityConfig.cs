using System;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;

using HFS.Entities.Models;
using HFS.Service;
using Repository.Pattern.DataContext;
using Repository.Pattern.Ef6;
using Repository.Pattern.Repositories;
using Repository.Pattern.UnitOfWork;

using HFS.Controllers;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Services;

namespace HFS.App_Start
{
    /// <summary>
    /// Specifies the Unity configuration for the main container.
    /// </summary>
    public class UnityConfig
    {
        #region Unity Container
        private static Lazy<IUnityContainer> container = new Lazy<IUnityContainer>(() =>
        {
            var container = new UnityContainer();
            RegisterTypes(container);
            return container;
        });

        /// <summary>
        /// Gets the configured Unity container.
        /// </summary>
        public static IUnityContainer GetConfiguredContainer()
        {
            return container.Value;
        }
        #endregion

        /// <summary>Registers the type mappings with the Unity container.</summary>
        /// <param name="container">The unity container to configure.</param>
        /// <remarks>There is no need to register concrete types such as controllers or API controllers (unless you want to 
        /// change the defaults), as Unity allows resolving a concrete type even if it was not previously registered.</remarks>
        public static void RegisterTypes(IUnityContainer container)
        {
            // NOTE: To load from web.config uncomment the line below. Make sure to add a Microsoft.Practices.Unity.Configuration to the using statements.
            // container.LoadConfiguration();

            container
                .RegisterType<AccountController>(new InjectionConstructor())
                .RegisterType<ManageController>(new InjectionConstructor())
                .RegisterType<IDataContextAsync, LotsContext>(new PerRequestLifetimeManager())
                .RegisterType<IUnitOfWorkAsync, UnitOfWork>(new PerRequestLifetimeManager())
                .RegisterType<IRepositoryAsync<Lot>, Repository<Lot>>()
                .RegisterType<IRepositoryAsync<Account>, Repository<Account>>()
                .RegisterType<IRepositoryAsync<Equity>, Repository<Equity>>()
                .RegisterType<IRepositoryAsync<Basket>, Repository<Basket>>()
                .RegisterType<IRepositoryAsync<Portfolio>, Repository<Portfolio>>()
                .RegisterType<IRepositoryAsync<Cash>, Repository<Cash>>()
                .RegisterType<IRepositoryAsync<ExpenseCode>, Repository<ExpenseCode>>()
                .RegisterType<IRepositoryAsync<Quote>, Repository<Quote>>()
                .RegisterType<IEquityCore, EquityCore>()
                .RegisterType<ILotService, LotService>()
                .RegisterType<IAccountService, AccountService>()
                .RegisterType<IEquityService, EquityService>()
                .RegisterType<IBasketService, BasketService>()
                .RegisterType<ICashService, CashService>()
                .RegisterType<IExpenseCodeService, ExpenseCodeSevice>()
                .RegisterType<IPortfolioService, PortfolioService>()
                .RegisterType<IQuoteService, QuoteService>()
                .RegisterType<ISummaryService, SummaryService>();
        }
    }
}
