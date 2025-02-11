namespace TechRetail_B.Models
{
    public class InventarioEsternoViewModel
    {
        public Utente UtenteLoggato { get; set; }
        public Filiale Filiale { get; set; }
        public List<Dictionary<string, string>> Prodotti { get; set; }

    }
}
