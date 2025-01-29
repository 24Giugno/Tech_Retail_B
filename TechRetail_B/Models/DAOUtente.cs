using Microsoft.Extensions.Hosting;
using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOUtente:IDAO
    {
        #region Singleton
        IDatabase db;
        DAOUtente()
        {
            db = new Database("TechRetail_B");
        }

        static DAOUtente instance = null;

        public static DAOUtente GetInstance()
        {
            if (instance == null)
                instance = new DAOUtente();

            return instance;
        }
        #endregion

        #region CRUD
        public List<Entity> GetRecords()
        {
            var righe = db.ReadDb($"SELECT * FROM utenti");

            if (righe != null)
            {
                List<Entity> ris = new();

                foreach (var riga in righe)
                {
                    Entity e = new Utente();
                    e.TypeSort(riga);
                    ris.Add(e);
                }
                return ris;
            }
            else return null;
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
    }

        public bool UpdateRecord(Entity entity)
        {
            throw new NotImplementedException();
        }

        public bool DeleteRecord(int recordId)
        {
            throw new NotImplementedException();
        }

        public Entity? FindRecord(int recordId)
        {
            throw new NotImplementedException();
        }

        #endregion

    }
}
