using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace TimeShare_FindHome.View
{
    public partial class signup_buyer : System.Web.UI.Page
    {
        public UserRegistration u_reg = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buyer_to_address_Click(object sender, EventArgs e)
        {
            u_reg.occupation = this.reg_occupation.Text;
            u_reg.income = double.Parse(this.reg_income.Text.ToString());
            u_reg.education = this.select_education.SelectedValue.ToString();
            u_reg.marital_status = this.marital_selection.SelectedValue.ToString();
            u_reg.no_of_family_members = int.Parse(this.reg_family_mem.Text.ToString());
            u_reg.nid = int.Parse(this.reg_nid.Text.ToString());

            Session["occupation"] = u_reg.occupation;
            Session["income"] = u_reg.income;
            Session["education"] = u_reg.education;
            Session["marital_status"] = u_reg.marital_status;
            Session["no_of_family_members"] = u_reg.no_of_family_members;
            Session["nid"] = u_reg.nid;

            Response.Redirect("~/View/SignUp_Address.aspx");
        }
    }
}