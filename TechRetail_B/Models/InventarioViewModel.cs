using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class InventarioViewModel
    {
        public Utente UtenteLoggato { get; set; }
        public List<Dictionary<string,string>> Prodotti {  get; set; }
    }
}
