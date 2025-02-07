using MSSTU.DB.Utility;
using System.Reflection.Metadata;

namespace TechRetail_B.Models
{
    public class DAOStocks : IDAO
    {
        #region Singleton
        IDatabase db;
        DAOStocks()
        {
            db = new Database("TechRetail_B", NomeDatabase.Nome);
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

            const string query = "INSERT INTO stocks (idProdottoFK,idFilialeFK,quantita) " +
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

                if (r.ContainsKey("idprodottofk") && int.TryParse(r["idprodottofk"], out int ProdottoId))
                {
                    Entity Prodotto = DAOProdotti.GetInstance().FindRecord(ProdottoId);
                    f._Prodotto = (Prodotto)Prodotto;
                }
                if (r.ContainsKey("idfilialefk") && int.TryParse(r["idfilialefk"], out int FilialeId))
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

        public Entity FindStock(int IdProdotto, int IdFiliale)
        {
            var parametri = new Dictionary<string, object>
            {
                {"@IdProdotto",IdProdotto},
                {"@IdFiliale",IdFiliale}

            };
            const string query = "SELECT * FROM stocks WHERE Stocks.idFilialeFK = @IdFiliale AND Stocks.idProdottoFK = @IdProdotto;";

            var ris = db.ReadOneDb(query, parametri);
            if (ris == null)
                return null;

            Stocks f = new Stocks();
            f.TypeSort(ris);

            if (ris.ContainsKey("idprodottofk") && int.TryParse(ris["idprodottofk"], out int ProdottoId))
             {
                Entity Prodotto = DAOProdotti.GetInstance().FindRecord(ProdottoId);
                f._Prodotto = (Prodotto)Prodotto;
             }
            if (ris.ContainsKey("idfilialefk") && int.TryParse(ris["idfilialefk"], out int FilialeId))
             {
                Entity Filiale = DAOFiliali.GetInstance().FindRecord(FilialeId);
                f._Filiale = (Filiale)Filiale;
             }
            return f;
        }

        public bool EliminaStock(Stocks stock)
        {
            var parametri = new Dictionary<string, object>
            {
                { "@Id", stock.Id },
                { "@IdProdotto", stock._Prodotto.Id },
                { "@IdFiliale", stock._Filiale.Id }
            };
            const string query = "DELETE FROM stocks WHERE stocks.id = @Id AND Stocks.idFilialeFK = @IdFiliale AND Stocks.idProdottoFK = @IdProdotto;";

            return db.UpdateDb(query, parametri);
        }
    }
}

#endregion