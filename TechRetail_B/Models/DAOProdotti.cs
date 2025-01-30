using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOProdotti : IDAO
    {
        #region Singleton
        IDatabase db;
        DAOProdotti()
        {
            db = new Database("TechRetail_B");
        }

        static DAOProdotti instance = null;

        public static DAOProdotti GetInstance()
        {
            if (instance == null)
                instance = new DAOProdotti();

            return instance;
        }
        #endregion

        #region CRUD
        public List<Entity> GetRecords()
        {
            var righe = db.ReadDb($"SELECT * FROM Prodotti");

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
               {"@Nome",((Prodotto)entity).Nome.Replace("'", "''")},
               {"@Descrizione",((Prodotto)entity).Descrizione.Replace("'", "''")},
               {"@ImmagineURL",((Prodotto)entity).ImmagineURL.Replace("'", "''")}
           };
            const string query = "INSERT INTO utenti (Nome,Descrizione,ImmagineURL) " +
                                 "VALUES " +
                                 "(@Nome,@Descrizione,@ImmagineURL)";

            return db.UpdateDb(query, parametri);
        }
        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Id",((Utente)entity).Id },
               {"@Nome",((Prodotto)entity).Nome.Replace("'", "''")},
               {"@Descrizione",((Prodotto)entity).Descrizione.Replace("'", "''")},
               {"@ImmagineURL",((Prodotto)entity).ImmagineURL.Replace("'", "''")}
           };

            const string query = $"UPDATE Prodotti SET " +
                                $"nome= @Nome, " +
                                $"descrizione= @Desrizione, " +
                                $"immagineURL= @ImmagineURL, " +
                                $"WHERE id=@Id";

            return db.UpdateDb(query, parametri);
        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };
            return db.UpdateDb($"DELETE FROM Prodotti WHERE id_prodotto = @Id;");
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };

            var riga = db.ReadOneDb($"SELECT * FROM Prodotti WHERE id_prodotto= @Id");
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
