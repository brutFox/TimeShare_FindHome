using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TimeShare_FindHome.Model
{
    public class HomeCondition
    {
        public int id { get; set; }
        public int home_feature_id { get; set; }
        public Double salary { get; set; }
        public string home_town { get; set; }
        public int education { get; set; }

        public MySqlDataReader ReturnConditionInfoByHomeFeatureId(HomeFeature Obj)
        {
            string Query = "SELECT * FROM home_condition WHERE home_feature_id = '" + Obj.home_feature_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }

        public void InsertHomeConditionData(HomeCondition Obj)
        {
            string Query = "INSERT INTO home_condition (home_feature_id, salary, home_town, education) VALUES ('" + Obj.home_feature_id + "', '" + Obj.salary + "', '" + Obj.home_town + "', '" + Obj.education + "')";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            Command.ExecuteNonQuery();

        }
    }
}