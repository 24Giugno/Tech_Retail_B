using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class Ordine:Entity
    {
        public DateTime Data { get; set; }
        public int Quantita { get; set; }
        public Utente _Utente { get; set; }
        public Prodotto _Prodotto { get; set; }
        public Filiale _FilialePartenza { get; set; }
        public Filiale _FilialeArrivo { get; set; }
        public string IndirizzoConsegna { get; set; }
        public bool InLoco { get; set; }
        public bool Restock { get; set; }

        public Ordine() { }

     

    }
}
