using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;
using System.Linq;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace TimeShare_FindHome.View
{
    public partial class SignIn : System.Web.UI.Page
    {
        public User ObjUser = new User();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void sign_in_btn_Click(object sender, EventArgs e)
        {
            ObjUser.username = this.username.Text;
            ObjUser.password = this.password.Text;
            MySqlDataReader User_check = ObjUser.CheckAccess(ObjUser.username, ObjUser.password);
            if (User_check.HasRows)
            {
                while (User_check.Read())
                {
                    Session["u_id"] = User_check.GetInt32(0);
                    Session["user_name"] = User_check.GetString(10);
                    Session["user_pass"] = User_check.GetString(11);
                }
                Response.Redirect("~/View/Home.aspx");
            }
            else
            {
                Response.Redirect("~/View/SignIn.aspx");
            }
        }
    }
}