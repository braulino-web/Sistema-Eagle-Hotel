namespace DataBase
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Data.Common;

    using DataBase.Connectors;

    /// <summary>
    /// To connect to a database.
    /// </summary>
    public class DAO
    {
        #region Fields

        #endregion

        #region Constructor

        /// <summary>
        /// Initializes a new instance of the DAO class.
        /// </summary>
        public DAO()
        {
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the connectior.
        /// </summary>
        public BaseConnector Connector
        {
            get;
            set;
        }

        #endregion

        #region Methods

        /// <summary>
        /// To setup a connection.
        /// </summary>
        /// <param name="databaseType">The database type.</param>
        /// <param name="connectionString">The connection string.</param>
        public void Setup(DatabaseTypes databaseType, string connectionString)
        {
            switch (databaseType)
            {
                case DatabaseTypes.Access:
                    {
                        this.Connector = new AccessConnector(connectionString);
                        break;
                    }

                case DatabaseTypes.MySql:
                    {
                        this.Connector = new MySQLConnector(connectionString);
                        break;
                    }

                case DatabaseTypes.SqlServer:
                    {
                        this.Connector = new SqlServerConnector(connectionString);
                        break;
                    }
            }
        }

        #endregion
    }

    /// <summary>
    /// The databases type.
    /// </summary>
    public enum DatabaseTypes
    {
        MySql,
        SqlServer,
        Access
    }
}