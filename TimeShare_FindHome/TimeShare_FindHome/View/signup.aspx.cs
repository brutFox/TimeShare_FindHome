using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;
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
            u_reg.user_name = this.user_name.Text;
            u_reg.name = this.reg_name.Text;
            u_reg.password = this.reg_pass.Text;
            u_reg.user_type = this.usertype_selection.SelectedValue.ToString();

            Session["user_name"] = u_reg.user_name;
            Session["name"] = u_reg.name;
            Session["email"] = u_reg.email;
            Session["pass"] = u_reg.password;
            Session["phone"] = this.phone.Text;
            Session["gender"] = this.Gender.SelectedValue.ToString();



            if (this.usertype_selection.SelectedValue == "Buyer")
            {
                Session["type"] = "Buyer";
                Response.Redirect("~/View/SignUp_Buyer.aspx");
                //this.reg_email.Text = "nai mama";
            }
            else if (this.usertype_selection.SelectedValue == "Developer")
            {
                Session["type"] = "Developer";
                Response.Redirect("~/View/SignUp_Developer.aspx");
            }

            else if (this.usertype_selection.SelectedValue == "Agent")
            {
                Session["type"] = "Agent";
                Response.Redirect("~/View/SignUp_Agent.aspx");
            }
        }
    }
}