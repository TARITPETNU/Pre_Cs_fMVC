using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace CS_1MVC.Repositories
{
    public class product
    {
        public DataSet getProduct()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            DataSet dataset = new DataSet();
            string command = "SELECT * FROM [product]";
            SqlCommand sqlCommand = new SqlCommand(command, sqlConnection);
            SqlDataAdapter sqlDataAdpter = new SqlDataAdapter(sqlCommand);
            sqlDataAdpter.Fill(dataset);
            return dataset;
        }
    }
}