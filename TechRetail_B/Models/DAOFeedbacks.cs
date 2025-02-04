using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOFeedbacks
    {
        #region Singleton
        IDatabase db;
        DAOFeedbacks()
        {
            db = new Database("TechRetail_B", NomeDatabase.Nome);
        }

        static DAOFeedbacks instance = null;

        public static DAOFeedbacks GetInstance()
        {
            if (instance == null)
                instance = new DAOFeedbacks();

            return instance;
        }
        #endregion

        #region CRUD
        public bool CreateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Stelle",((Feedback)entity).Stelle},
               {"@Commento",((Feedback)entity).Commento.Replace("'","''")},
               {"@Stato",((Feedback)entity).Stato.Replace("'","''")}, 
               {"@idOrdineFK",((Feedback)entity)._Ordine.Id},
               {"@idUtenteFK",((Feedback)entity)._Ordine.Id},
           };

            const string query = "INSERT INTO Feedbacks (Stelle,Commento,Stato,idOrdineFK,idUtenteFK) " +
                                 "VALUES (@Stelle,@Commento,@Stato,@idOrdineFK,@idUtenteFK)";

            return db.UpdateDb(query, parametri);

        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };
            const string query = "DELETE FROM Feedbacks WHERE id = @id";

            return db.UpdateDb(query, parametro);
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };

            const string query = "SELECT * FROM Feedbacks WHERE id = @id";

            var ris = db.ReadOneDb(query, parametro);
            if (ris == null)
                return null;

            Entity f = new Feedback();
            f.TypeSort(ris);

            return f;
        }

        public List<Entity> GetRecords()
        {
            const string query = "SELECT * FROM Feedbacks";
            List<Entity> entities = [];
            var ris = db.ReadDb(query);
            if (ris == null)
                return entities;

            foreach (var r in ris)
            {
                Feedback f = new Feedback();
                f.TypeSort(r);

                if (r.ContainsKey("idordinefk") && int.TryParse(r["idordinefk"], out int OrdineId))
                {
                    Entity Ordine = DAOProdotti.GetInstance().FindRecord(OrdineId);
                    f._Ordine = (Ordine)Ordine;
                }
                if (r.ContainsKey("idutentefk") && int.TryParse(r["idutentefk"], out int UtenteId))
                {
                    Entity Utente = DAOFiliali.GetInstance().FindRecord(UtenteId);
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
               {"@Id", ((Feedback)entity).Id },
               {"@Stelle",((Feedback)entity).Stelle},
               {"@Commento",((Feedback)entity).Commento.Replace("'","''")},
               {"@Stato",((Feedback)entity).Stato.Replace("'","''")},
               {"@idOrdineFK",((Feedback)entity)._Ordine.Id},
               {"@idUtenteFK",((Feedback)entity)._Ordine.Id},
           };

            const string query = "UPDATE Feedbacks SET " +
                                 "Stelle = @Stelle, Commento = @Commento, Stato= @Stato, idOrdineFK = @idOrdineFK, idUtenteFK = @idUtenteFK " +
                                 "WHERE id = @Id ";
            return db.UpdateDb(query, parametri);
        }
#endregion

    }
}


