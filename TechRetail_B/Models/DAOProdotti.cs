using Microsoft.Data.SqlClient;
using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOProdotti : IDAO
    {
        #region Singleton
        IDatabase db;
        DAOProdotti()
        {
            db = new Database("TechRetail_B", NomeDatabase.Nome);
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
                    Entity e = new Prodotto();
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
               {"@Prezzo",((Prodotto)entity).Prezzo },
               {"@Descrizione",((Prodotto)entity).Descrizione.Replace("'", "''")},
               {"@ImmagineURL",((Prodotto)entity).ImmagineURL.Replace("'", "''")}
           };
            const string query = "INSERT INTO prodotti (Nome,Descrizione,Prezzo,ImmagineURL) " +
                                 "VALUES " +
                                 "(@Nome,@Descrizione,@Prezzo,@ImmagineURL)";

            return db.UpdateDb(query, parametri);
        }
        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Id",((Utente)entity).Id },
               {"@Nome",((Prodotto)entity).Nome.Replace("'", "''")},
               {"@Prezzo",((Prodotto)entity).Prezzo },
               {"@Descrizione",((Prodotto)entity).Descrizione.Replace("'", "''")},
               {"@ImmagineURL",((Prodotto)entity).ImmagineURL.Replace("'", "''")}
           };

            const string query = $"UPDATE Prodotti SET " +
                                $"nome= @Nome, " +
                                $"descrizione= @Desrizione, " +
                                $"prezzo= @Prezzo, " +
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
            return db.UpdateDb($"DELETE FROM Prodotti WHERE id = @Id;", parametro);
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", recordId }
            };

            var riga = db.ReadOneDb($"SELECT * FROM Prodotti WHERE id = @Id", parametro);
            if (riga != null)
            {
                Entity e = new Prodotto();
                e.TypeSort(riga);

                return e;
            }
            else
                return null;
        }

        public List<Dictionary<string,string>> ListaInventario(int id)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", id }
            };

            string query = "SELECT prodotti.id as Id, Nome, prezzo, quantita " +
                           "FROM Prodotti JOIN stocks " +
                           "ON Prodotti.id = Stocks.idProdottoFK " +
                           "WHERE Stocks.idFilialeFK= @Id;";

            return db.ReadDb(query,parametro);
        }

        public List<Dictionary<string, string>> ListaMagazzino()
        {
            string query = "SELECT prodotti.id as Id, Nome, prezzo, quantita " +
                           "FROM Prodotti JOIN stocks " +
                           "ON Prodotti.id = Stocks.idProdottoFK " +
                           "WHERE Stocks.idFilialeFK=1;";

            return db.ReadDb(query);
        }

        public List<Dictionary<string, string>> ListaMagazzino(int id)
        {
            var parametro = new Dictionary<string, object>
            {
                {"@Id", id }
            };

            string query = "SELECT prodotti.id as Id, Nome, prezzo, quantita " +
                          "FROM Prodotti JOIN stocks " +
                          "ON Prodotti.id = Stocks.idProdottoFK " +
                          "WHERE Stocks.idFilialeFK= @Id";

            return db.ReadDb(query, parametro);
        }

        #endregion


        public List<Dictionary<string, string>> CercaProdotti(int idFiliale, string termine)
        {
            var parametro = new Dictionary<string, object>
    {
        { "@Id", idFiliale },
        { "@termine", "%" + termine + "%" } // Aggiungi % ai lati del termine per il LIKE
    };

            string query = "SELECT prodotti.id as Id, Nome, prezzo, quantita " +
                           "FROM Prodotti " +
                           "JOIN stocks ON Prodotti.id = Stocks.idProdottoFK " +
                           "WHERE Stocks.idFilialeFK = @Id AND Nome LIKE @termine;";

            return db.ReadDb(query, parametro);
        }
    }
}
