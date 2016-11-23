using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Web.Services;
using RMS.DAL;

namespace RMS.UI.WebServices
{
    /// <summary>
    /// Summary description for AutoCompleteService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AutoCompleteService : System.Web.Services.WebService
    {
        private IDataAccess objDataAccess;
        private DbCommand objDbCommand;

        [WebMethod]
        public List<string> SearchUserInfo(string searchText)
        {
            objDataAccess = DataAccess.NewDataAccess();
            objDbCommand = objDataAccess.GetCommand(true, IsolationLevel.ReadCommitted);
            DbDataReader objDbDataReader = null;
            List<string> objUserList = new List<string>();

            objDbCommand.AddInParameter("SearchText", searchText);
            objDbDataReader = objDataAccess.ExecuteReader(objDbCommand, "[rdb].[uspGetUserInfoForGv]", CommandType.StoredProcedure);
            try
            {
                if (objDbDataReader.HasRows)
                {
                    while (objDbDataReader.Read())
                    {
                        objUserList.Add(objDbDataReader["Username"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error : " + ex.Message);
            }
            finally
            {
                if (objDbDataReader != null)
                {
                    objDbDataReader.Close();
                }
                objDataAccess.Dispose(objDbCommand);
            }
            return objUserList;
        }

        [WebMethod]
        public List<string> SearchDesignation(string searchText)
        {
            objDataAccess = DataAccess.NewDataAccess();
            objDbCommand = objDataAccess.GetCommand(true, IsolationLevel.ReadCommitted);
            DbDataReader objDbDataReader = null;
            List<string> objUserList = new List<string>();

            objDbCommand.AddInParameter("SearchText", searchText);
            objDbDataReader = objDataAccess.ExecuteReader(objDbCommand, "[rdb].[uspGetDesignationBySearch]", CommandType.StoredProcedure);
            try
            {
                if (objDbDataReader.HasRows)
                {
                    while (objDbDataReader.Read())
                    {
                        objUserList.Add(objDbDataReader["DesignationName"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error : " + ex.Message);
            }
            finally
            {
                if (objDbDataReader != null)
                {
                    objDbDataReader.Close();
                }
                objDataAccess.Dispose(objDbCommand);
            }
            return objUserList;
        }

    }
}
