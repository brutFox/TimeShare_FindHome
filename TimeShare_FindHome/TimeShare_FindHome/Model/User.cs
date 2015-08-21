using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;

namespace TimeShare_FindHome.Model
{
    public class User
    {
        public int u_id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string gender { get; set; }
        public string phone { get; set; }
        public int address_id { get; set; }
        public string username { get; set; }
        public string password { get; set; }

        public MySqlDataReader ReturnUserInfoById(User Obj)
        {
            string Query = "SELECT * FROM user WHERE u_id = '" + Obj.u_id + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();

            MySqlDataReader Reader = Command.ExecuteReader();

            return Reader;
        }
    }
}
