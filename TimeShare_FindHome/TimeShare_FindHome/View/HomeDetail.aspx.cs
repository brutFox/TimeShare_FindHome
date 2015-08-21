using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeShare_FindHome.Model;

namespace TimeShare_FindHome.View
{
    public partial class HomeDetail : System.Web.UI.Page
    {

        public HomeFeature ObjHomeFeature = new HomeFeature();
        public District ObjDistrict = new District();
        public Upazilla ObjUpazilla = new Upazilla();
        public Address ObjAddress = new Address();
        public Model.Home ObjHome = new Model.Home();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int HomeId;
                HomeId = int.Parse(Request.QueryString["HomeId"]);
                GetHomeFeatureInfoByAddress(HomeId);
                GetHomeInfoByHomeFeatureId(HomeId);
            }
        }


        public void GetHomeInfoByHomeFeatureId(int HomeFeaturedId)
        {
            ObjHome.home_feature_id = HomeFeaturedId;

            MySqlDataReader HomeInfo = ObjHome.ReturnHomeInfoByFeatureId(ObjHome);
            if (HomeInfo.HasRows)
            {
                while (HomeInfo.Read())
                {
                    this.LabelType.Text = HomeInfo.GetString(4).ToString();
                }
            }

        }

        public void GetHomeFeatureInfoByAddress(int HomeId)
        {
            ObjHomeFeature.home_feature_id = HomeId;

            MySqlDataReader HomeFeatureInfo = ObjHomeFeature.ReturnHomeFeatureInfoById(ObjHomeFeature);

            if (HomeFeatureInfo.HasRows)
            {
                while (HomeFeatureInfo.Read())
                {
                    this.LabelBath.Text = HomeFeatureInfo.GetInt32(6).ToString();
                    this.LabelBed.Text = HomeFeatureInfo.GetInt32(7).ToString();
                    this.LabelArea.Text = (HomeFeatureInfo.GetInt32(5)+"m").ToString();
                    this.LabelGarege.Text = HomeFeatureInfo.GetInt32(8).ToString();
                    this.LabelPrice.Text = ("$ " + HomeFeatureInfo.GetFloat(2)).ToString();
                    this.LabelPrice2.Text = ("$ " + HomeFeatureInfo.GetFloat(2)).ToString();
                    this.LabelName.Text = HomeFeatureInfo.GetString(1).ToString();
                    this.LabelDescription.Text = HomeFeatureInfo.GetString(9).ToString();

                    ObjHomeFeature.address = HomeFeatureInfo.GetInt32(3);
                    MySqlDataReader AddressInfo = ObjAddress.ReturnAddressInfo(ObjHomeFeature);
                    if (AddressInfo.HasRows)
                    {
                        while (AddressInfo.Read())
                        {
                            ObjAddress.district = AddressInfo.GetInt32(2);
                            ObjAddress.upazilla = AddressInfo.GetInt32(3);

                            MySqlDataReader DistrictInfo = ObjDistrict.ReturnDistrictInfo(ObjAddress);
                            if (DistrictInfo.HasRows)
                            {
                                while (DistrictInfo.Read())
                                {
                                    this.LabelDistrict.Text = DistrictInfo.GetString(1).ToString();
                                }
                            }

                            MySqlDataReader UpazillaInfo = ObjUpazilla.ReturnUpazillaInfo(ObjAddress);
                            if (UpazillaInfo.HasRows)
                            {
                                while (UpazillaInfo.Read())
                                {
                                    this.LabelUpazilla.Text = (UpazillaInfo.GetString(1) + ",").ToString();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}