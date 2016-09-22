using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Stocks
{
    public static class StockQuoter
    {
        public static List<StockQuote> GetQuotes(List<string> symbols)
        {
            List<StockQuote> sqs = new List<StockQuote>();
            symbols.ForEach(x =>
            {
                StockQuote quote = GetQuote(x);
                if (quote != null)

                    sqs.Add(quote);
            });

            return sqs;
        }

        public static StockQuote GetQuote(string symbol)
        {
            string[] symbols = symbol.Replace(",", " ").Split(' ');

            // Use Yahoo finance service to download stock data from Yahoo
//            string yahooURL = @"http://download.finance.yahoo.com/d/quotes.csv?s=" +
//                              symbol + "&f=sl1d1t1c1hgvbap2";

            string yahooURL = @"http://download.finance.yahoo.com/d/quotes.csv?s=" +
                              symbol + "&f=l1c1kjr5r";

            // Initialize a new WebRequest.
            HttpWebRequest webreq = (HttpWebRequest)WebRequest.Create(yahooURL);
            // Get the response from the Internet resource.
            HttpWebResponse webresp = (HttpWebResponse)webreq.GetResponse();
            // Read the body of the response from the server.
            StreamReader strm =
              new StreamReader(webresp.GetResponseStream(), Encoding.ASCII);

            string[] cont = strm.ReadLine().Split(',');

            if (cont.Count() >= 6)
            {
                return new StockQuote
                {
                    Symbol = symbol,
                    Last = cont[0],
                    Change = cont[1],
                    Wk52_High = cont[2],
                    Wk52_Low = cont[3],
                    PEG = cont[4],
                    PE = cont[5]
                };
            }
            else
                return null;
        }
    }
}