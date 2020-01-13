using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_loan
{
    public class DBconnection
    {
        SqlConnection conn;
        SqlCommand cmd;
        public DBconnection()
        {

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["eLoan"].ConnectionString;
            conn = new SqlConnection(connectionString);

        }

        public DataTable getData(string sqlQuery)
        {
            DataTable dt = new DataTable();

            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            dt.Load(cmd.ExecuteReader());
            conn.Close();

            return dt;
        }

        public bool iud(string sqlQuery)
        {
            bool b = false;
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            int check = cmd.ExecuteNonQuery();
            conn.Close();
            if (check > 0)
            {
                b = true;
            }
            else
            {
                b = false;

            }

            return b;
        }

        public bool checkData( string query)
        {
            DataTable dt = new DataTable();
            bool check = false;
            dt = getData(query);
            if (dt.Rows.Count > 0)
            {
                check = true;
            }
            else
            {
                check = false;
            }
            return check;
        }


    }
}
