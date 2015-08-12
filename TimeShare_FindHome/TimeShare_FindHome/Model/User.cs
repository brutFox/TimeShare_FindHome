using System.ComponentModel.DataAnnotations;
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
        public int phone { get; set; }
        public string nationality { get; set; }
        public string marital_status { get; set; }
        public string national_id { get; set; }
        public string tin_no { get; set; }
        public string address_id { get; set; }

        public SqlCommand sqlconnection(string sql)
        {
            string conn_str = ConfigurationManager.ConnectionStrings["Library_management"].ConnectionString;
            SqlConnection connection = new SqlConnection(conn_str);
            SqlCommand cmd = new SqlCommand(sql, connection);
            connection.Open();

            return cmd;
        }
    }
}
