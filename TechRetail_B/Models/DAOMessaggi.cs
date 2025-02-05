using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOMessaggi : IDAO
    {
        #region Singleton
        IDatabase db;
        DAOMessaggi()
        {
            db = new Database("TechRetail_B", NomeDatabase.Nome);
        }

        static DAOMessaggi instance = null;

        public static DAOMessaggi GetInstance()
        {
            if (instance == null)
                instance = new DAOMessaggi();

            return instance;
        }
        #endregion

        #region CRUD
        public bool CreateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Contenuto",((Messaggio)entity).Contenuto.Replace("'","''")},
               {"@Dataora",((Messaggio)entity).Dataora},
               {"@idUtenteFK",((Messaggio)entity)._Utente.Id},
           };

            const string query = "INSERT INTO Feedbacks                            (Contenuto,Stato,idUtenteFK) " +
                                 "VALUES (@Contenuto,@Dataora,@idUtenteFK)";

            return db.UpdateDb(query, parametri);
        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };
            const string query = "DELETE FROM Messaggi WHERE id = @id";

            return db.UpdateDb(query, parametro);
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };

            const string query = "SELECT * FROM Messaggi WHERE id = @id";

            var ris = db.ReadOneDb(query, parametro);
            if (ris == null)
                return null;

            Messaggio f = new Messaggio();
            f.TypeSort(ris);

            if (ris.ContainsKey("idutentefk") && int.TryParse(ris["idutentefk"], out int UtenteId))
            {
                Entity Utente = DAOUtenti.GetInstance().FindRecord(UtenteId);
                f._Utente = (Utente)Utente;
            }
            return f;
        }

        public List<Entity> GetRecords()
        {
            const string query = "SELECT * FROM Messaggi";
            List<Entity> entities = [];
            var ris = db.ReadDb(query);
            if (ris == null)
                return entities;

            foreach (var r in ris)
            {
                Messaggio f = new Messaggio();
                f.TypeSort(r);

                
                if (r.ContainsKey("idutentefk") && int.TryParse(r["idutentefk"], out int UtenteId))
                {
                    Entity Utente = DAOUtenti.GetInstance().FindRecord(UtenteId);
                    f._Utente = (Utente)Utente;
                }

                entities.Add(f);
            }
            return entities;
        }

        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Contenuto",((Messaggio)entity).Contenuto.Replace("'","''")},
               {"@Dataora",((Messaggio)entity).Dataora},
               {"@idUtenteFK",((Messaggio)entity)._Utente.Id},
           };

            const string query = "UPDATE Messaggi SET " +
                "Contenuto = @Contenuto, " +
                "Dataora = @Dataora, " +
                "idUtenteFk = @idUtenteFk " +
                "WHERE id = @Id";

            return db.UpdateDb(query, parametri);
                
        }
        #endregion
    }
}
