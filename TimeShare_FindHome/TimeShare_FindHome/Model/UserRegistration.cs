using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System;
namespace TimeShare_FindHome.Model
{
    public class UserRegistration
    {
        public string email { get; set; }
        public string user_name { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public string phone { get; set; }
        public string gender { get; set; }
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

        public bool insert_buyer_tab(UserRegistration obj)
        {
            string districtQuery = "INSERT INTO district(name) VALUES ('" + obj.district + "')";
            string districtConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection districtConnection = new MySqlConnection(districtConnectionString);
            MySqlCommand districtCommand = new MySqlCommand(districtQuery, districtConnection);
            districtConnection.Open();
            districtCommand.ExecuteNonQuery();
            int district_id = Convert.ToInt32(districtCommand.LastInsertedId);
            //int district_id = districtReader.GetInt32(0);
            districtConnection.Close();

            string upazillaQuery = "INSERT INTO upazilla(name, 	d_id ) VALUES ('" + obj.upazilla + "', '" + district_id + "')";
            string upazillaConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection upazillaConnection = new MySqlConnection(upazillaConnectionString);
            MySqlCommand upazillaCommand = new MySqlCommand(upazillaQuery, upazillaConnection);
            upazillaConnection.Open();
            upazillaCommand.ExecuteNonQuery();
            int upazilla_id = Convert.ToInt32(upazillaCommand.LastInsertedId);
            upazillaConnection.Close();


            string addressQuery = "INSERT INTO address( district, upazilla) VALUES ('" + district_id + "', '" + upazilla_id + "')";
            string addressConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection addressConnection = new MySqlConnection(addressConnectionString);
            MySqlCommand addressCommand = new MySqlCommand(addressQuery, addressConnection);
            addressConnection.Open();
            addressCommand.ExecuteNonQuery();
            int address_id = Convert.ToInt32(addressCommand.LastInsertedId);
            addressConnection.Close();

            string Query = "INSERT INTO user (name, email, gender, phone, address_id, user_name, password) VALUES ('" + obj.name + "', '" + obj.email + "', '" + obj.gender + "', '" + obj.phone + "', '" + address_id + "', '" + obj.user_name + "', '" + obj.password + "')";
            string ConnectionString = ConfigurationManager.ConnectionStrings["TimeShareConnection"].ConnectionString;
            MySqlConnection Connection = new MySqlConnection(ConnectionString);
            MySqlCommand Command = new MySqlCommand(Query, Connection);
            Connection.Open();
            Command.ExecuteNonQuery();
            int u_id = Convert.ToInt32(Command.LastInsertedId);

            string BuyerQuery = "INSERT INTO buyer(u_id, occupation, total family memebr, yearly_income, educational_qualification, marital_status, National_id) VALUES ('" + u_id + "', '" + obj.occupation + "', '" + obj.no_of_family_members + "', '" + obj.income + "', '" + obj.education + "', '" + obj.marital_status + "', '" + obj.nid + "')";
            MySqlCommand BuyerCommand = new MySqlCommand(BuyerQuery, Connection);
            Command.ExecuteNonQuery();
            int b_id = Convert.ToInt32(BuyerCommand.LastInsertedId);
            Connection.Close();

            return true;

        }
    }
}