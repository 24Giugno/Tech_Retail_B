using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class Messaggio:Entity
    {
        public string Contenuto { get; set; }
        public DateTime Dataora {  get; set; }
        public Utente _Utente { get; set; }

        public Messaggio() { }

    }
}
