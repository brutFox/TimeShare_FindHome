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
    public partial class SignUp_Address : System.Web.UI.Page
    {
        UserRegistration u_reg = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_btn_Click(object sender, EventArgs e)
        {
            u_reg.country = this.country_selection.SelectedValue.ToString();
            u_reg.district = int.Parse(this.district_selection.SelectedIndex.ToString());
            u_reg.upazilla = int.Parse(this.area_selection.SelectedIndex.ToString());

            

            

        }
    }
}