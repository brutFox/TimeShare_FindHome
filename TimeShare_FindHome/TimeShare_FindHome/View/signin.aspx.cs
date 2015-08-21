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
            if (IsPostBack)
            {
                string UserType;

                ObjUser.username = this.username.Text;
                ObjUser.password = this.password.Text;
                UserType = Request.Form[DropDownListType.UniqueID].ToString();

                MySqlDataReader UserInfo = ObjUser.CheckAccess(ObjUser);

                if (UserInfo.HasRows)
                {
                    while (UserInfo.Read())
                    {
                        Session["u_id"] = UserInfo.GetInt32(0);
                        ObjUser.u_id = UserInfo.GetInt32(0);

                        if (UserType == "0")
                        {
                            MySqlDataReader BuyerInfo = ObjUser.CheckType(ObjUser);
                            if (BuyerInfo.HasRows)
                            {
                                while (BuyerInfo.Read())
                                {
                                    Session["buyer_id"] = BuyerInfo.GetInt32(0);
                                }
                            }
                        }
                        if (UserType == "1")
                        {
                            MySqlDataReader DeveloperInfo = ObjUser.CheckDeveloper(ObjUser);
                            if (DeveloperInfo.HasRows)
                            {
                                while (DeveloperInfo.Read())
                                {
                                    Session["developer_id"] = DeveloperInfo.GetInt32(0);
                                }
                            }
                        }
                    }

                    Response.Redirect("~/View/Home.aspx");
                }
            }
        }

        //    protected void sign_in_btn_Click(object sender, EventArgs e)
        //    {
        //        string user_type = Request.Form[DropDownListType.UniqueID].ToString();
        //        ObjUser.username = this.username.Text;
        //        ObjUser.password = this.password.Text;
        //        MySqlDataReader User_check = ObjUser.CheckAccess(ObjUser.username, ObjUser.password);
        //        if (User_check.HasRows)
        //        {
        //            while (User_check.Read())
        //            {
        //                Session["u_id"] = User_check.GetInt32(0);
        //                Session["user_name"] = User_check.GetString(6);
        //                Session["user_pass"] = User_check.GetString(7);
        //                Session["user_type"] = user_type;
        //                int u_id = Convert.ToInt32(Session["u_id"].ToString());
        //            }
        //            if (user_type == "0")
        //            { 
        //                int a = 0;
        //                MySqlDataReader CheckType = ObjUser.CheckType(a, this.u_id);
        //                if(CheckType.HasRows)
        //                {
        //                    Session["buyer_id"] = CheckType.GetInt32(0);
        //                    Response.Redirect("~/View/Home.aspx");
        //                }

        //            }
        //            else if (user_type == "1")
        //            {
        //                int a = 0;
        //                MySqlDataReader CheckDeveloper = ObjUser.CheckDeveloper(a, u_id);
        //                if (CheckDeveloper.HasRows)
        //                {
        //                    Session["developer_id"] = CheckDeveloper.GetInt32(0);
        //                    Response.Redirect("~/View/SignUp.aspx");
        //                }
        //            }
        //            else
        //            {
        //                Response.Write("frgfdgdfgdf");
        //            }

        //        }
        //        else
        //        {
        //            Response.Write("dfdgdf");
        //        }
        //    }

        //    public int u_id { get; set; }
        //}
    }
}