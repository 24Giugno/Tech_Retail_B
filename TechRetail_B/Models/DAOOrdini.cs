namespace TechRetail_B.Models;
using MSSTU.DB.Utility;

using System.Collections.Generic;

public class DAOOrdini : IDAO
{
    #region Singleton
    IDatabase db;
    DAOOrdini()
    {
        db = new Database("TechRetail_B", "DESKTOP-L1JR8LA");
    }

    static DAOOrdini instance = null;

    public static DAOOrdini GetInstance()
    {
        if (instance == null)
            instance = new DAOOrdini();

        return instance;
    }
    #endregion
    public bool CreateRecord(Entity entity)
    {
        var parametri = new Dictionary<string, object>
           {
               {"@Data",((Ordine)entity).Data},
               {"@Quantita",((Ordine)entity).Quantita},
               {"@UtenteId",((Ordine)entity)._Utente.Id},
               {"@ProdottoId",((Ordine)entity)._Prodotto.Id},
               {"@FilialePartenzaId",((Ordine)entity)._FilialeArrivo.Id},
               {"@FilialeArrivoId",((Ordine)entity)._FilialePartenza.Id},
               {"@IndirizzoConsegna",((Ordine)entity).IndirizzoConsegna.Replace("'", "''")},
               {"@InLoco",((Ordine)entity).InLoco},
               {"@Restock",((Ordine)entity).Restock},
           };

        const string query = "INSERT INTO Ordini (data,quantita,idUtenteFK,idProdottoFK,idFilialePartenzaFK,idFilialeArrivoFK,indirizzoConsegna,inLoco,restock) " +
                             "VALUES (@Data,@Quantita,@UtenteId,@ProdottoId,@FilialePartenzaId,@FilialeArrivoId,@IndirizzoConsegna,@InLoco,@Restock)";

        return db.UpdateDb(query, parametri);
    }

    public bool DeleteRecord(int recordId)
    {
        var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };
        const string query = "DELETE FROM ordini WHERE id = @id";

        return db.UpdateDb(query, parametro);
    }

    public Entity? FindRecord(int recordId)
    {
        var parametro = new Dictionary<string, object>
            {
                { "@id", recordId }
            };

        const string query = "SELECT * FROM ordini WHERE id = @id";

        var ris = db.ReadOneDb(query, parametro);
        if (ris == null)
            return null;

        Entity f = new Stocks();
        f.TypeSort(ris);

        return f;
    }

    public List<Entity> GetRecords()
    {
        const string query = "SELECT * FROM ordini";
        List<Entity> entities = [];
        var ris = db.ReadDb(query);
        if (ris == null)
            return entities;

        foreach (var r in ris)
        {
            Ordine f = new Ordine();
            f.TypeSort(r);

            if (r.ContainsKey("idutentefk") && int.TryParse(r["idprodottofk"], out int UtenteId))
            {
                Entity Utente = DAOUtenti.GetInstance().FindRecord(UtenteId);
                f._Utente = (Utente)Utente;
            }
            if (r.ContainsKey("idprodottofk") && int.TryParse(r["idprodottofk"], out int ProdottoId))
            {
                Entity Prodotto = DAOProdotti.GetInstance().FindRecord(ProdottoId);
                f._Prodotto = (Prodotto)Prodotto;
            }
            if (r.ContainsKey("idfilialepartenzafk") && int.TryParse(r["idfilialepartenzafk"], out int FilialePartenzaId))
            {
                Entity FilialePartenza = DAOFiliali.GetInstance().FindRecord(FilialePartenzaId);
                f._FilialePartenza = (Filiale)FilialePartenza;
            }
            if (r.ContainsKey("idfilialearrivofk") && int.TryParse(r["idfilialearrivofk"], out int FilialeArrivoId))
            {
                Entity FilialeArrivo = DAOFiliali.GetInstance().FindRecord(FilialeArrivoId);
                f._FilialeArrivo = (Filiale)FilialeArrivo;
            }

            entities.Add(f);
        }
        return entities;
    }

    public bool UpdateRecord(Entity entity)
    {
        var parametri = new Dictionary<string, object>
           {
               {"@Id",((Ordine)entity).Id},
               {"@Data",((Ordine)entity).Data},
               {"@Quantita",((Ordine)entity).Quantita},
               {"@UtenteId",((Ordine)entity)._Utente.Id},
               {"@ProdottoId",((Ordine)entity)._Prodotto.Id},
               {"@FilialePartenzaId",((Ordine)entity)._FilialeArrivo.Id},
               {"@FilialeArrivoId",((Ordine)entity)._FilialePartenza.Id},
               {"@IndirizzoConsegna",((Ordine)entity).IndirizzoConsegna.Replace("'", "''")},
               {"@InLoco",((Ordine)entity).InLoco},
               {"@Restock",((Ordine)entity).Restock},
           };

        const string query = "UPDATE stocks SET data = @Data, quantita = @Quantita, idUtenteFK = @UtenteId, idProdottoFK = @ProdottoId, @FilialePartenzaId = @FilialePartenzaId, idFilialeArrivoFK = @FilialeArrivoId, indirizzoConsegna = @IndirizzoConsegna, inLoco = @InLoco, restock = @Restock " +
                             "WHERE id = @Id ";
        return db.UpdateDb(query, parametri);
    }
}

