namespace DataBase.Connectors
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    using System.Data;
    using System.Data.Common;
    using System.Data.OleDb;
    using System.Data.Odbc;

    /// <summary>
    /// To connect to a DB via access.
    /// </summary>
    public class AccessConnector : BaseConnector
    {
        #region Fields

        /// <summary>
        /// The connection;
        /// </summary>
        private OdbcConnection connection = null;

        #endregion

        #region Constructor

        /// <summary>
        /// Initializes a new instance of the AccessConnector class.
        /// </summary>
        public AccessConnector()
        {
        }

        /// <summary>
        /// Initializes a new instance of the AccessConnector class.
        /// </summary>
        /// <param name="connectionString">The connection string.</param>
        public AccessConnector(string connectionString)
        {
            this.ConnectionString = connectionString;
        }

        #endregion

        #region Methods

        /// <summary>
        /// To open a connection.
        /// </summary>
        /// <returns>False if failed to open a connection.</returns>
        public override bool Open()
        {
            try
            {
                this.connection = new OdbcConnection(this.ConnectionString);
                this.connection.Open();
            }
            catch
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// To close a connection.
        /// </summary>
        /// <returns>False if failed to close.</returns>
        public override bool Close()
        {
            try
            {
                this.connection.Close();
            }
            catch
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// To make a query that will return a db reader.
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public override System.Data.IDataReader QueryWithReader(string query)
        {
            OdbcCommand command = new OdbcCommand(query, this.connection);
            OdbcDataReader reader = command.ExecuteReader();
            return reader;
        }

        /// <summary>
        /// To make a query like insert or update.
        /// </summary>
        /// <param name="text">The text to submit</param>
        /// <returns>False if failled.</returns>
        public override int Execute(string text)
        {
            OdbcCommand command = new OdbcCommand(text, this.connection);
            int result = command.ExecuteNonQuery();
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override DbCommand GetCommand(string text)
        {
            return new OdbcCommand(text, this.connection); ;
        }

        #endregion
    }
}
