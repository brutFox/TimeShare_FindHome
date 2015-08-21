using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;
using System.Linq;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System;

namespace TimeShare_FindHome.View
{
    public partial class SignUp_Agent : System.Web.UI.Page
    {
        UserRegistration u_reg = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void agent_to_address_Click(object sender, EventArgs e)
        {
            u_reg.agent_license = int.Parse(this.reg_agent_license.Text.ToString());

            Response.Redirect("~/View/SignUp_Address.aspx");
        }
    }
}