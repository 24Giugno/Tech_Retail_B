

    namespace TechRetail_B.Models
    {
        public class OrdiniViewModel
        {
            // Proprietà necessarie per la view, ad esempio:
            public int OrdiniInCorso { get; set; }
            public double PercentualeLoco { get; set; }
            public double FatturatoGiornaliero { get; set; }
            public Dictionary<DateTime, int> GraficoLineaLoco { get; set; }
            public Dictionary<DateTime, int> GraficoLineaOnline { get; set; }
            // Aggiungi altre proprietà se necessario
        }
    }


