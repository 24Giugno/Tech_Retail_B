using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOUtenti:IDAO
    {
        #region Singleton
        IDatabase db;
        DAOUtenti()
        {
            db = new Database("TechRetail_B");
        }

        static DAOUtenti instance = null;

        public static DAOUtenti GetInstance()
        {
            if (instance == null)
                instance = new DAOUtenti();

            return instance;
        }
        #endregion

        #region CRUD
        public List<Entity> GetRecords()
        {
            const string query= $"SELECT * FROM utenti";

            List<Entity> entities = [];
            var ris = db.ReadDb(query);
            if (ris == null)
                return entities;

            foreach (var r in ris)
            {
                Utente u = new Utente();
                u.TypeSort(r);

                if (r.ContainsKey("ruolo") && r["ruolo"]=="cliente")
                {
                    Entity f = new Filiale();
                    f.Id = 0;
                    u._Filiale = (Filiale)f;
                }
                if (r.ContainsKey("ruolo") && r["ruolo"] == "staff"|| r["ruolo"]=="admin")
                {
                    int.TryParse(r["idFilialeFK"], out int id);
                    Entity f = DAOFiliali.GetInstance().FindRecord(id);
                    u._Filiale = (Filiale)f;
                }
                entities.Add(u);
            }
            return entities;
        }

        public bool CreateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Nome",((Utente)entity).Nome.Replace("'", "''")},
               {"@Cognome",((Utente)entity).Cognome.Replace("'", "''")},
               {"@Mail",((Utente)entity).Mail.Replace("'", "''")},
               {"@Passw",((Utente)entity).Passw.Replace("'", "''")},
               {"@Ruolo",((Utente)entity).Ruolo.Replace("'", "''")},
               {"@IdFilialeFK",((Utente)entity)._Filiale.Id},
           };
            const string query = "INSERT INTO utenti (Nome,Cognome,Mail,Passw,Ruolo,IdFilialeFk) " +
                                 "VALUES " +
                                 "(@Nome,@Cognome,@Mail,@Passw,@Ruolo,@IdFilialeFK)";

            return db.UpdateDb(query, parametri);
        }
        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Id",((Utente)entity).Id },
               {"@Nome",((Utente)entity).Nome.Replace("'", "''")},
               {"@Cognome",((Utente)entity).Cognome.Replace("'", "''")},
               {"@Mail",((Utente)entity).Mail.Replace("'", "''")},
               {"@Passw",((Utente)entity).Passw.Replace("'", "''")},
               {"@Ruolo",((Utente)entity).Ruolo.Replace("'", "''")},
               {"@IdFilialeFK",((Utente)entity)._Filiale.Id},
           };

            const string query = $"UPDATE Utenti SET " +
                                $"nome= @Nome, " +
                                $"cognome= @Cognome, " +
                                $"mail= @Mail, " +
                                $"passw= @Passw, " +
                                $"idFilialeFK= @IdFilialeFK " +
                                $"WHERE id=@Id";

            return db.UpdateDb(query, parametri);
        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };
            return db.UpdateDb($"DELETE FROM Utenti WHERE id_utente = @Id;");
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };

            var riga = db.ReadOneDb($"SELECT * FROM Utenti WHERE id_utente= @Id");
            if (riga != null)
            {
                Entity e = new Utente();
                e.TypeSort(riga);

                return e;
            }
            else
                return null;
        }

        #endregion
    }
}
