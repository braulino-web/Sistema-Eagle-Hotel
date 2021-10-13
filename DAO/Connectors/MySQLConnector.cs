namespace DataBase.Connectors
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    using System.Data;
    using System.Data.Common;

    using MySql;
    using MySql.Data;
    using MySql.Data.MySqlClient;
    using MySql.Data.MySqlClient.Properties;    
    
    /// <summary>
    /// To connect to a DB via MySql.
    /// </summary>
    public class MySQLConnector : BaseConnector
    {
        #region Fields

        /// <summary>
        /// The connection;
        /// </summary>
        private MySqlConnection connection = null;

        #endregion

        #region Constructor
        
        /// <summary>
        /// Initializes a new instance of the MySQLConnector class.
        /// </summary>
        public MySQLConnector()
        {
        }

        /// <summary>
        /// Initializes a new instance of the AccessConnector class.
        /// </summary>
        /// <param name="connectionString">The connection string.</param>
        public MySQLConnector(string connectionString)
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
                this.connection = new MySqlConnection(this.ConnectionString);
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
            MySqlCommand command = new MySqlCommand(query, this.connection);
            MySqlDataReader reader = command.ExecuteReader();
            return reader;
        }

        /// <summary>
        /// To make a query like insert or update.
        /// </summary>
        /// <param name="text">The text to submit</param>
        /// <returns>False if failled.</returns>
        public override int Execute(string text)
        {
            MySqlCommand command = new MySqlCommand(text, this.connection);            
            int result = command.ExecuteNonQuery();
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override DbCommand GetCommand(string text)
        {
            return new MySqlCommand(text, this.connection);
        }

        #endregion
    }
}
