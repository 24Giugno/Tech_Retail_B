using MSSTU.DB.Utility;
namespace TechRetail_B.Models
{
    public class Stocks : Entity

    {
        public Prodotto _Prodotto { get; set; }
        public Filiale _Filiale { get; set; }
        public int Quantita { get; set; }

        public Stocks() { }
    }
}
