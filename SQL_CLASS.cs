using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;

namespace WEB_PROJE
{
    class SQL_Connection
    {

        public static SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-E4K04KS\MSSQLSERVER01;Initial Catalog=user_data;Integrated Security=True");



        public static void Connection_Check()
        {


            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {
                

            }

        }



    }
}