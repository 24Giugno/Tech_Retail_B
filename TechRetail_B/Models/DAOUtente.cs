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
               {"@Nome",((Medico)entity).Nome.Replace("'", "''")},
               {"@Cognome",((Medico)entity).Cognome.Replace("'", "''")},
               {"@Dob",((Medico)entity).Dob},
               {"@Residenza",((Medico)entity).Residenza.Replace("'", "''")},
               {"@Reparto",((Medico)entity).Reparto.Replace("'", "''")},
               {"@Primario",((Medico)entity).Primario},
               {"@PazientiGuariti",((Medico)entity).PazientiGuariti},
               {"@TotaleDecessi",((Medico)entity).TotaleDecessi},
               {"@OspedaleId",((Medico)entity)._ospedale.Id},
           };
            const string query = "INSERT INTO Medici (Nome,Cognome,Dob,Residenza,Reparto,Primario,PazientiGuariti,TotaleDecessi,ospedale_id) " +
                                 "VALUES (@Nome,@Cognome,@Dob,@Residenza,@Reparto,@Primario,@PazientiGuariti,@TotaleDecessi,@OspedaleId)";

            return _db.UpdateDb(query, parametri);
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
