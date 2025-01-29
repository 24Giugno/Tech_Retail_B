using MSSTU.DB.Utility;

namespace TechRetail_B.Models
{
    public class DAOFiliale:IDAO
    {
        #region Singleton
        IDatabase db;
        DAOFiliale()
        {
            db = new Database("TechRetail_B");
        }

        static DAOFiliale instance = null;

        public static DAOFiliale GetInstance()
        {
            if (instance == null)
                instance = new DAOFiliale();

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
