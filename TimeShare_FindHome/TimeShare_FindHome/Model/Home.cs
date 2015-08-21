using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class Home
    {
        public int home_id { get; set; }
        public int dev_id { get; set; }
        public int owner_id { get; set; }
        public int home_feature_id { get; set; }
        public string type { get; set; }

        public MySqlDataReader ReturnHomeInfoByFeatureId(Home Obj)
        {
            string Query = "SELECT * FROM home WHERE home_feature_id = '" + Obj.home_feature_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader ReturnHomeInfo()
        {
            string Query = "SELECT * FROM home";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public void InsertHomeData(Home Obj)
        {
            string Query = "INSERT INTO home (dev_id, owner_id, home_feature_id, type) VALUES ('" + Obj.dev_id + "', '" + Obj.owner_id + "', '" + Obj.home_feature_id + "', '" + Obj.type + "')";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            Command.ExecuteNonQuery();

        }
    }
}