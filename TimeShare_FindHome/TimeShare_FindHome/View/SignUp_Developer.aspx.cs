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
    public partial class SignUp_Developer : System.Web.UI.Page
    {
        UserRegistration u_reg = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void developer_to_address_Click(object sender, EventArgs e)
        {
            u_reg.company_name = this.reg_company_name.Text.ToString();
            u_reg.company_license = int.Parse(this.reg_company_license.Text.ToString());
            u_reg.chairman = this.reg_chairman.Text.ToString();

            Response.Redirect("~/View/SignUp_Address.aspx");
        }
    }
}