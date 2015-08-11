using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class Upazilla
    {
        public int uzilla_id { get; set; }
        public string name { get; set; }
        public int d_id { get; set; }

        public MySqlDataReader ReturnUpazillaId(Upazilla Obj, District Obj2)
        {
            string Query = "SELECT * FROM upazilla WHERE name = '" + Obj.name + "' AND d_id = '" + Obj2.d_id + "'";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}