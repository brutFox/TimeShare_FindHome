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
        public Double price { get; set; }
        public int address { get; set; }
        public int no_of_room { get; set; }
        public int area { get; set; }
        public int baths { get; set; }
        public int beds { get; set; }
        public int garages { get; set; }
        public string description { get; set; }
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
        
        public Int32 InsertHomeFeatureData(HomeFeature Obj)
        {
            string Query = "INSERT INTO home_feature (name, price, address, no_of_room, area, baths, beds, garages, description, photo1, photo2, photo3, photo4) VALUES ('" + Obj.name + "', '" + Obj.price + "', '" + Obj.address + "', '" + Obj.no_of_room + "', '" + Obj.area + "', '" + Obj.baths + "', '" + Obj.beds + "', '" + Obj.garages + "', '" + Obj.description + "', '" + Obj.photo1 + "', '" + Obj.photo2 + "', '" + Obj.photo3 + "', '" + Obj.photo4 + "')";
            string Query2 = "SELECT LAST_INSERT_ID()";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            MySqlCommand Command2 = new MySqlCommand(Query2, Connection);
            Connection.Open();

            Command.ExecuteNonQuery();
            Int32 InsertedId = Convert.ToInt32(Command2.ExecuteScalar());


            return InsertedId;
        }


    }
}