namespace HFS.Service.Infrastructure.Stocks
{
    public static class QuotePredicition
    {
        public enum Prediciton
        {
            Nothing,
            Bear,
            Bull,
            NewHigh,
            Consolidation,
            Correction,
            Bull3,
            Bull5,
            Normal
        }


        public static Prediciton GetPrediction(decimal value, decimal hi, decimal lo)
        {
            if (value <= 0)
                return Prediciton.Nothing;
            if (hi < (decimal)-0.2)
                return Prediciton.Bear;
            if (hi <= (decimal)-0.1)
                return Prediciton.Correction;
            if (hi <= (decimal)-0.05)
                return Prediciton.Consolidation;
            if (hi >= (decimal)0)
                return Prediciton.NewHigh;
            if (lo > (decimal)0.5)
                return Prediciton.Bull5;
            if (lo > (decimal)0.3)
                return Prediciton.Bull3;
            if (lo > (decimal)0.2)
                return Prediciton.Bull;
            
            return Prediciton.Normal;
        }

    }
}