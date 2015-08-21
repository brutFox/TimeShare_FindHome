using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;

namespace TimeShare_FindHome.View.Admin
{
    public partial class AddHome : System.Web.UI.Page
    {
        public Address ObjAddress = new Address();
        public District ObjDistrict = new District();
        public Upazilla ObjUpazilla = new Upazilla();
        public Model.Home ObjHome = new Model.Home();
        public HomeFeature ObjHomeFeature = new HomeFeature();
        public HomeCondition ObjCondition = new HomeCondition();
        public Owner ObjOwner = new Owner();
        public Seller ObjSeller = new Seller();
        public User ObjUser = new User();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddOwnerList();
                AddUpazillaList();
                AddDistrictList();
            }
            if (IsPostBack)
            {
                Int32 InsertedId;
                ObjHomeFeature.name = this.TextBoxName.Text;
                ObjHomeFeature.price = Convert.ToDouble(this.TextBoxPrice.Text);
                ObjHomeFeature.no_of_room = Convert.ToInt32(this.TextBoxRoom.Text);
                ObjHomeFeature.beds = Convert.ToInt32(this.TextBoxBed.Text);
                ObjHomeFeature.baths = Convert.ToInt32(this.TextBoxBath.Text);
                ObjHomeFeature.area = Convert.ToInt32(this.TextBoxArea.Text);
                ObjHomeFeature.description = this.TextBoxDescription.Text;
                ObjHomeFeature.garages = Convert.ToInt32(this.TextBoxGarage.Text);
                ObjHomeFeature.photo1 = null;
                ObjHomeFeature.photo2 = null;
                ObjHomeFeature.photo3 = null;
                ObjHomeFeature.photo4 = null;

                ObjDistrict.d_id = Convert.ToInt32(Request.Form[DropDownListDistrict.UniqueID]);
                ObjUpazilla.uzilla_id = Convert.ToInt32(Request.Form[DropDownListUpazilla.UniqueID]);

                MySqlDataReader AddressInfo = ObjAddress.ReturnAddressId(ObjDistrict, ObjUpazilla);
                if (AddressInfo.HasRows)
                {
                    while (AddressInfo.Read())
                    {
                        ObjHomeFeature.address = AddressInfo.GetInt32(0);
                    }
                }

                InsertedId = ObjHomeFeature.InsertHomeFeatureData(ObjHomeFeature);

                ObjHome.dev_id = 1;
                ObjHome.owner_id = Convert.ToInt32(this.DropDownListOwner.SelectedValue);
                ObjHome.type = this.DropDownListType.SelectedValue.ToString();
                ObjHome.home_feature_id = InsertedId;

                ObjHome.InsertHomeData(ObjHome);

                ObjCondition.home_feature_id = InsertedId;
                ObjCondition.salary = Convert.ToDouble(this.TextBoxSalary.Text);
                ObjCondition.education = Convert.ToInt32(Request.Form[DropDownListEducation.UniqueID]);
                ObjCondition.home_town = this.TextBoxHomeTown.Text;

                ObjCondition.InsertHomeConditionData(ObjCondition);

            }
        }

        public void AddOwnerList()
        {
            DropDownListOwner.Items.Add(new ListItem("Owner", ""));
            MySqlDataReader OwnerInfo = ObjOwner.ReturnOwnerInfo();
            if (OwnerInfo.HasRows)
            {
                while (OwnerInfo.Read())
                {
                    ObjSeller.s_id = OwnerInfo.GetInt32(1);
                    MySqlDataReader SellerInfo = ObjSeller.ReturnSellerInfoById(ObjSeller);
                    if (SellerInfo.HasRows)
                    {
                        while (SellerInfo.Read())
                        {
                            ObjUser.u_id = SellerInfo.GetInt32(1);
                            MySqlDataReader UserInfo = ObjUser.ReturnUserInfoById(ObjUser);
                            if (UserInfo.HasRows)
                            {
                                while (UserInfo.Read())
                                {
                                    DropDownListOwner.Items.Add(new ListItem(UserInfo.GetString(1).ToString(), UserInfo.GetInt32(0).ToString()));
                                }
                            }
                        }
                    }
                }
            }
        }

        public void AddUpazillaList()
        {
            DropDownListUpazilla.Items.Add(new ListItem("Upazilla", ""));

            MySqlDataReader UpazillaInfo = ObjUpazilla.ReturnUpazillaInfo();
            if (UpazillaInfo.HasRows)
            {
                while (UpazillaInfo.Read())
                {
                    this.DropDownListUpazilla.Items.Add(new ListItem(UpazillaInfo.GetString(1).ToString(), UpazillaInfo.GetInt32(0).ToString()));
                }
            }
        }

        public void AddDistrictList()
        {
            DropDownListDistrict.Items.Add(new ListItem("District", ""));

            MySqlDataReader DistrictInfo = ObjDistrict.ReturnDistrictInfo();
            if (DistrictInfo.HasRows)
            {
                while (DistrictInfo.Read())
                {
                    this.DropDownListDistrict.Items.Add(new ListItem(DistrictInfo.GetString(1).ToString(), DistrictInfo.GetInt32(0).ToString()));
                }
            }
        }
    }
}