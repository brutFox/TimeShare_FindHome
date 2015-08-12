using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class Address
    {
        public int address_id { get; set; }
        public string country { get; set;}
        public int district { get; set; }
        public int upazilla { get; set; }

        public MySqlDataReader ReturnAddressId(District Obj, Upazilla Obj2)
        {
            string Query = "SELECT * FROM address WHERE district = '" + Obj.d_id + "' AND upazilla = '" + Obj2.uzilla_id + "'";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public MySqlDataReader ReturnAddressInfo(HomeFeature Obj)
        {
            string Query = "SELECT * FROM address WHERE address_id = '" + Obj.address + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}