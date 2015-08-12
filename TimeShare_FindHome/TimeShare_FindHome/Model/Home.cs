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
        public int u_id { get; set; }
        public string developer { get; set; }
        public string owner { get; set; }
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
    }
}