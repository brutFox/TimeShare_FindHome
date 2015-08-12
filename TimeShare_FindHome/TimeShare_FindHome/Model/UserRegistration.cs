using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
namespace TimeShare_FindHome.Model
{
    public class UserRegistration
    {
        public string email { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public string user_type { get; set; }
        public string occupation { get; set; }
        public double income { get; set; }
        public string education { get; set; }
        public string marital_status { get; set; }
        public int no_of_family_members { get; set; }
        public int nid { get; set; }
        public string company_name { get; set; }
        public int company_license { get; set; }
        public string chairman { get; set; }
        public int agent_license { get; set; }
        public string country { get; set; }
        public int district { get; set; }
        public int upazilla { get; set; }

        public MySqlDataReader insert_to_user_tab()
        {
            string Query = "";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();


            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}