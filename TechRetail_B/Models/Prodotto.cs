using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class Prodotto : Entity
    {
        public string Nome { get; set; }
        public string Descrizione { get; set; }

        public float Prezzo { get; set; }
        public string ImmagineURL { get; set; }

        public Prodotto() { }
    }
}
