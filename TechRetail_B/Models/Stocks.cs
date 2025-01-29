using MSSTU.DB.Utility;
namespace TechRetail_B.Models
{
    public class Stocks : Entity

    {
        public Prod Prodotto { get; set; }
        public Fil Filiale { get; set; }
        public int Quantita { get; set; }
    }
}
