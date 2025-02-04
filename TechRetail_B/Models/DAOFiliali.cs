using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOFiliali :IDAO
    {
        #region Singleton
        IDatabase db;
        DAOFiliali()
        {
            db = new Database("TechRetail_B", NomeDatabase.Nome);
        }

        static DAOFiliali instance = null;

        public static DAOFiliali GetInstance()
        {
            if (instance == null)
                instance = new DAOFiliali();

            return instance;
        }
        #endregion

        #region CRUD
        public List<Entity> GetRecords()
        {
            var righe = db.ReadDb($"SELECT * FROM filiali");

            if (righe != null)
            {
                List<Entity> ris = new();

                foreach (var riga in righe)
                {
                    Entity e = new Filiale();
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
               {"@Magazzino",((Filiale)entity).Magazzino},
               {"@Indirizzo",((Filiale)entity).Indirizzo.Replace("'", "''")},
               {"@Email",((Filiale)entity).Email.Replace("'", "''")},
               {"@Telefono",((Filiale)entity).Telefono.Replace("'", "''")},
               {"@DisponibileAlRitiro",((Filiale)entity).DisponibileAlRitiro}
           };
            const string query = "INSERT INTO filiali (Magazzino,Indirizzo,Email,Telefono,DisponibileAlRitiro) " +
                                 "VALUES " +
                                 "(@Magazzino,@Indirizzo,@Email,@Telefono,@DisponibileAlRitiro)";

            return db.UpdateDb(query, parametri);
        }
        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Id",((Filiale)entity).Id },
               {"@Magazzino",((Filiale)entity).Magazzino},
               {"@Indirizzo",((Filiale)entity).Indirizzo.Replace("'", "''")},
               {"@Email",((Filiale)entity).Email.Replace("'", "''")},
               {"@Telefono",((Filiale)entity).Telefono.Replace("'", "''")},
               {"@DisponibileAlRitiro",((Filiale)entity).DisponibileAlRitiro}
           };
            const string query = $"UPDATE filiali SET " +
                                $"magazzino= @Magazzino, " +
                                $"indirizzo= @Indirizzo, " +
                                $"email= @Email, " +
                                $"telefono= @Telefono, " +
                                $"disponibileAlRitiro= @DisponibileAlRitiro " +
                                $"WHERE id=@Id";

            return db.UpdateDb(query, parametri);
        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };
            return db.UpdateDb($"DELETE FROM Filiali WHERE id = @Id;",parametro);
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };

            var riga = db.ReadOneDb($"SELECT * FROM Filiali WHERE id = @Id",parametro);
            if (riga != null)
            {
                Entity e = new Filiale();
                e.TypeSort(riga);

                return e;
            }
            else
                return null;
        }

        #endregion
    }
}
