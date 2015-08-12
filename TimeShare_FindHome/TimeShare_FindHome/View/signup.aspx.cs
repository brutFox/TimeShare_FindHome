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


namespace TimeShare_FindHome
{
    public partial class SignUp : System.Web.UI.Page
    {
        public UserRegistration u_reg = new UserRegistration();


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void basic_to_usertype_Click(object sender, EventArgs e)
        {
            u_reg.email = this.reg_email.Text;
            u_reg.name = this.reg_name.Text;
            u_reg.password = this.reg_pass.Text;
            u_reg.user_type = this.usertype_selection.SelectedValue.ToString();

            if (this.usertype_selection.SelectedValue == "Buyer")
            {
                Response.Redirect("~/View/SignUp_Buyer.aspx");
                //this.reg_email.Text = "nai mama";
            }
            else if (this.usertype_selection.SelectedValue == "Developer")
                Response.Redirect("~/View/SignUp_Developer.aspx");
            else if(this.usertype_selection.SelectedValue == "Agent")
                Response.Redirect("~/View/SignUp_Agent.aspx");

        }
    }
}