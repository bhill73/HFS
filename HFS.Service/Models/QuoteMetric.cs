using System;
using System.ComponentModel.DataAnnotations;
using HFS.Service.Infrastructure;
using HFS.Entities.Models;
using HFS.Service.Infrastructure.Stocks;

namespace HFS.Service.Models
{
    public class QuoteMetric
    {
        private readonly Quote _quote;

        public QuoteMetric(Quote quote)
        {
            _quote = quote;
            GenerateMetrics();
        }

        public string Symbol => _quote?.Symbol;

        [Display(Name = "Quote")]
        public string Last => _quote?.Q_Last;

        public string Change => _quote?.Q_Change;

        [Display(Name = "52 High")]
        public string Wk52_High => _quote?.Q_52Wk_High;

        [Display(Name = "52 Low")]
        public string Wk52_Low => _quote?.Q_52Wk_Low;

        [Display(Name = "Off High"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal PercentOffHi { get; set; }

        [Display(Name = "Off Low"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal PercentOffLo { get; set; }

        [Display(Name = "Market")]
        public string Prediction { get; set; }


        private void GenerateMetrics()
        {
            if (_quote == null) return;
            decimal Hi52 = Convert.ToDecimal(_quote.Q_52Wk_High);
            decimal Lo52 = Convert.ToDecimal(_quote.Q_52Wk_Low);
            PercentOffHi = (Hi52 > 0) ? 0 - (1 - (_quote.LastValue/Hi52)) : 0;
            PercentOffLo = (Lo52 > 0) ? ((_quote.LastValue - Lo52)/ Lo52) : 0;
            Prediction = $"{QuotePredicition.GetPrediction(_quote.LastValue, PercentOffHi, PercentOffLo):G}";
        }
    }
}