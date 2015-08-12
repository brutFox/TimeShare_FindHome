using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class User
    {
        public string email { get; set; }
        public string password { get; set; }
        public int uid { get; set; }

        public MySqlDataReader CheckAccess(string email_, string password)
        {
            string Query = "SELECT * FROM user WHERE email = '" + email_ + "' AND password = '" + password + "'";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
        
    }
}
