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
        public int u_id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        
        public MySqlDataReader CheckAccess(User Obj)
        {
            string Query = "SELECT * FROM user WHERE user_name = '" + Obj.username + "' AND password = '" + Obj.password + "'";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader CheckType(User Obj)
        {
            string Query = "SELECT * FROM buyer WHERE u_id = '" + Obj.u_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
        public MySqlDataReader CheckDeveloper(User Obj)
        {
            string Query = "SELECT * FROM developer WHERE seller_id = (SELECT s_id FROM seller WHERE u_id = '" + Obj.u_id + "')";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}
