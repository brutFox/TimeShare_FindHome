using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace TimeShare_FindHome
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                check_my_sql_conn();
            }
        }
        private void check_my_sql_conn()
        {
            //connection string
            string conn = ConfigurationManager.ConnectionStrings["MySQLConnStr"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                //using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM members"))
                //{
                //    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                //    {
                //        cmd.Connection = con;
                //        sda.SelectCommand = cmd;
                //        using (DataTable dt = new DataTable())
                //        {
                //            sda.Fill(dt);
                //            GridView1.DataSource = dt;
                //            GridView1.DataBind();
                //        }
                //    }
                //}
                
            }
        }
    }
}