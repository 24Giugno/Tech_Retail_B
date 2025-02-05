using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class Feedback:Entity
    {
        public int Stelle {  get; set; }
        public string Commento { get; set; }
        public string Stato { get; set; }
        public Ordine _Ordine { get; set; }
        public Utente _Utente { get; set; }
        public Feedback() { }

    }
}
