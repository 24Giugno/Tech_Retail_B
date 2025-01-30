using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOStocks : IDAO
    {
        #region Singleton
        IDatabase db;
        DAOStocks()
        {
            db = new Database("TechRetail_B");
        }

        static DAOStocks instance = null;

        public static DAOStocks GetInstance()
        {
            if (instance == null)
                instance = new DAOStocks();

            return instance;
        }
        #endregion

        #region CRUD
        public bool CreateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@ProdottoId",((Stocks)entity)._Prodotto.Id},
               {"@FilialeId",((Stocks)entity)._Filiale.Id},
               {"@Quantita",((Stocks)entity).Quantita},   
           };

            const string query = "INSERT INTO stocks (idProdotto,idFiliale,quantita) " +
                                 "VALUES (@ProdottoId,@FilialeId,@Quantita)";

            return db.UpdateDb(query, parametri);

        }

        public bool DeleteRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };
            const string query = "DELETE FROM stocks WHERE id = @id";

            return db.UpdateDb(query, parametro);
        }

        public Entity? FindRecord(int recordId)
        {
            var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };

            const string query = "SELECT * FROM stocks WHERE id = @id";

            var ris = db.ReadOneDb(query, parametro);
            if (ris == null)
                return null;

            Entity f = new Stocks();
            f.TypeSort(ris);

            return f;
        }

        public List<Entity> GetRecords()
        {
            const string query = "SELECT * FROM stocks";
            List<Entity> entities = [];
            var ris = db.ReadDb(query);
            if (ris == null)
                return entities;

            foreach (var r in ris)
            {
                Stocks f = new Stocks();
                f.TypeSort(r);

                if (r.ContainsKey("idProdottoFK") && int.TryParse(r["idProdottoFK"], out int ProdottoId))
                {
                    Entity Prodotto = DAOProdotti.GetInstance().FindRecord(ProdottoId);
                    f._Prodotto = (Prodotto)Prodotto;
                }
                if (r.ContainsKey("idFilialeFK") && int.TryParse(r["idFilialeFK"], out int FilialeId))
                {
                    Entity Filiale = DAOFiliali.GetInstance().FindRecord(FilialeId);
                    f._Filiale = (Filiale)Filiale;
                }

                entities.Add(f);
            }
            return entities;
        }

        public bool UpdateRecord(Entity entity)
        {
            var parametri = new Dictionary<string, object>
           {
               {"@Id",entity.Id},
               {"@ProdottoId",((Stocks)entity)._Prodotto.Id},
               {"@FilialeId",((Stocks)entity)._Filiale.Id},
               {"@Quantita",((Stocks)entity).Quantita}
           };

            const string query = "UPDATE stocks SET idProdottoFK = @ProdottoId, idFilialeFK = @FilialeId, quantita = @Quantita " +
                                 "WHERE id = @Id ";
            return db.UpdateDb(query, parametri);
        }

    }
}

#endregion