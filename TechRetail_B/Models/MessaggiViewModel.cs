using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class MessaggiViewModel
    {
        public List<Entity> Messaggi { get; set; }
        public Utente UtenteLoggato { get; set; }
    }
}
