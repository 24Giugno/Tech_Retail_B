using MSSTU.DB.Utility;
namespace TechRetail_B.Models


{
    public class Utente : Entity
    {
        public string Nome { get; set; }
        public string Cognome { get; set; } 
        public string Mail { get; set; }
        public string Passw { get; set; }
        public string Ruolo { get; set; }
        public Filiale _Filiale { get; set; }

        public Utente() { }
    }
}
