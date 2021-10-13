namespace DataBase.Connectors
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    using System.Data;
    using System.Data.Common;
    using System.Data.Sql;
    using System.Data.SqlClient;
    using System.Data.SqlTypes;    

    /// <summary>
    /// To connect to a DB via SqlServer.
    /// </summary>
    public class SqlServerConnector : BaseConnector
    {
        #region Fields

        /// <summary>
        /// The connection;
        /// </summary>
        private SqlConnection connection = null;

        #endregion

        #region Constructor

        /// <summary>
        /// Initializes a new instance of the MySQLConnector class.
        /// </summary>
        public SqlServerConnector()
        {
        }

        /// <summary>
        /// Initializes a new instance of the AccessConnector class.
        /// </summary>
        /// <param name="connectionString">The connection string.</param>
        public SqlServerConnector(string connectionString)
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
                this.connection = new SqlConnection(this.ConnectionString);
                this.connection.Open();
            }
            catch (Exception error)
            {
                string a = error.Message;
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
                this.connection = null;
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
            SqlCommand command = new SqlCommand(query, this.connection);
            SqlDataReader reader = command.ExecuteReader();
            return reader;

        }

        /// <summary>
        /// To make a query like insert or update.
        /// </summary>
        /// <param name="text">The text to submit</param>
        /// <returns>False if failled.</returns>
        public override int Execute(string text)
        {
            SqlCommand command = new SqlCommand(text, this.connection);
            int result = command.ExecuteNonQuery();
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override DbCommand GetCommand(string text)
        {
            return new SqlCommand(text, this.connection); ;
        }

        #endregion
    }
}