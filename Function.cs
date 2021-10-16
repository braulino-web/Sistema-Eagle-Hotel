using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Eagle_Hotel_System
{
    class Function
    {

        protected SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection();

            con.ConnectionString = "data source = DESKTOP-DCIN7P0" + @"\" +"SQLEXPRESS; database=EagleHotelSystem;integrated security = True";
            
            return con;
        }

        public DataSet GetData(String query) //Pega dados do Banco
        {
            SqlConnection con = GetConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void setData (String query, String message) // Insert Delete e Update no Banco
        {
            SqlConnection con = GetConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public SqlDataReader getForCombo (String query)
        {
            SqlConnection con = GetConnection();
            SqlCommand cmd = new SqlCommand();  
            cmd.Connection = con;
            con.Open();
            cmd = new SqlCommand(query, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            return sdr;

        }
    }
}
