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
            u_reg.user_name = Session["user_name"].ToString();
            u_reg.name = Session["name"].ToString();
            u_reg.email = Session["email"].ToString();
            u_reg.password = Session["pass"].ToString();
            u_reg.phone = Session["phone"].ToString();
            u_reg.gender = Session["gender"].ToString();
            
            if (Session["type"] == "Buyer")
            {
                u_reg.income = double.Parse(Session["income"].ToString());
                u_reg.education = Session["education"].ToString();
                u_reg.marital_status = Session["marital_status"].ToString();
                u_reg.no_of_family_members = Convert.ToInt32(Session["no_of_family_members"]);
                u_reg.nid = Convert.ToInt32(Session["nid"]);
                bool a = u_reg.insert_buyer_tab(u_reg);
            }
            else if (Session["type"] == "Developer")
            {
                u_reg.company_name = Session["company_name"].ToString();
                u_reg.company_license = Convert.ToInt32(Session["company_license"]);
                u_reg.chairman = Session["chairman"].ToString();
            }

            Session.RemoveAll();
            Response.Redirect("/View/SignIn.aspx");
        }
    }
}