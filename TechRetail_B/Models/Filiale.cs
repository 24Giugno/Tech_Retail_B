using MSSTU.DB.Utility;
namespace TechRetail_B.Models
{
    public class Filiale : Entity

    {
        public string Indirizzo { get; set; }
        public string Contatti { get; set; }
        public bool Magazzino { get; set; }
        public bool Ritiro { get; set; }
    }
}
