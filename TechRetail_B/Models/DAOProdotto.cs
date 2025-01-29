using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOProdotto:IDAO
    {
        #region Singleton
        IDatabase db;
        DAOProdotto()
        {
            db = new Database("TechRetail_B");
        }

        static DAOProdotto instance = null;

        public static DAOProdotto GetInstance()
        {
            if (instance == null)
                instance = new DAOProdotto();

            return instance;
        }
        #endregion

        #region CRUD
        public List<Entity> GetRecords()
        {
            throw new NotImplementedException();
        }

        public bool CreateRecord(Entity entity)
        {
            throw new NotImplementedException();
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
