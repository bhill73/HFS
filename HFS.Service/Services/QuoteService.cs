using System;
using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Service.Infrastructure;
using HFS.Service.Infrastructure.Stocks;
using Repository.Pattern.Repositories;
using Service.Pattern;
using System.Runtime.Caching;

namespace HFS.Service.Services
{
    public interface IQuoteService : IService<Quote>
    {
        IEnumerable<Quote> GetQuotes(List<string> symbols, string tag );

        Quote GetQuote(string symbol);

    }

    public class QuoteService : Service<Quote> , IQuoteService
    {
        public QuoteService(IRepositoryAsync<Quote> repository) : base(repository)
        {
        }

        public IEnumerable<Quote> GetQuotes(List<string> symbols, string tag = "" )
        {
            if (symbols == null)
                return null;

            var list = MemoryCache.Default.Get(tag) as List<Quote>;
            if (list != null)
                return list;


            var lst = new List<Quote>();
            symbols.ForEach(x =>
            {
                lst.Add(GetQuote(x));
            });

            CacheItemPolicy cip = new CacheItemPolicy()
            {
                AbsoluteExpiration = new DateTimeOffset(DateTime.Now.AddMinutes(20)),
            };

            MemoryCache.Default.Set(tag, lst, cip);

            return lst;
        }

        public Quote GetQuote(string symbol)
        {
            var qte = StockQuoter.GetQuote(symbol);
            return new Quote
            {
                Symbol = qte.Symbol,
                Q_52Wk_High = qte.Wk52_High,
                Q_52Wk_Low = qte.Wk52_Low,
                Q_Change = qte.Change,
                Q_Last = qte.Last,
                PEG = qte.PEG,
                PE = qte.PE
            };
        }
    }

}