namespace TechRetail_B.Models
{
    public class MagazzinoViewModel
    {
        public Utente UtenteLoggato { get; set; }
        public List<Dictionary<string, string>> Prodotti { get; set; }
        public List<Ordine> Ordini { get; set; }
    }
}
