using MSSTU.DB.Utility;
namespace TechRetail_B.Models
{
    public class Filiale : Entity

    {
        public bool Magazzino { get; set; }
        public string Indirizzo { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public bool DisponibileAlRitiro { get; set; }

        public Filiale() { }
    }
}
