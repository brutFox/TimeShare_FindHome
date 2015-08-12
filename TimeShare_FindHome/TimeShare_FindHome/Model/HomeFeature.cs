using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class HomeFeature
    {
        public int home_feature_id { get; set; }
        public string name { get; set; }
        public float price { get; set; }
        public int address { get; set; }
        public int no_of_room { get; set; }
        public int area { get; set; }
        public int baths { get; set; }
        public int beds { get; set; }
        public int garages { get; set; }
        public string description { get; set; }
        public int rent_duration  { get; set; }
        public string photo1 { get; set; }
        public string photo2 { get; set; }
        public string photo3 { get; set; }
        public string photo4 { get; set; }

        public MySqlDataReader ReturnHomeFeatureInfoByAddress(HomeFeature Obj)
        {
            string Query = "SELECT * FROM home_feature WHERE address = '" + Obj.address + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader ReturnHomeFeatureInfo()
        {
            string Query = "SELECT * FROM home_feature";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader ReturnHomeFeatureInfoById(HomeFeature Obj)
        {
            string Query = "SELECT * FROM home_feature WHERE home_feature_id = '" + Obj.home_feature_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }


    }
}