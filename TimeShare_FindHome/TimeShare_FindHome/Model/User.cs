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
        public string username { get; set; }
        public string password { get; set; }
        
        public MySqlDataReader CheckAccess(string user_name, string password)
        {
            string Query = "SELECT * FROM user WHERE user_name = '" + user_name + "' AND password = '" + password + "'";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader CheckType(int type, int u_id)
        {
            string Query = "SELECT * FROM buyer WHERE u_id = '" + u_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
        public MySqlDataReader CheckDeveloper(int type, int u_id)
        {
            string Query = "SELECT * FROM developer WHERE seller_id = (SELECT s_id FROM seller WHERE u_id = '" + u_id + "')";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}
