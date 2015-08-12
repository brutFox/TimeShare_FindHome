using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using TimeShare_FindHome.Model;

namespace TimeShare_FindHome
{
    public partial class Home : System.Web.UI.Page
    {
        public Address ObjAddress = new Address();
        public District ObjDistrict = new District();
        public Upazilla ObjUpazilla = new Upazilla();
        public Model.Home ObjHome = new Model.Home();
        public HomeFeature ObjHomeFeature = new HomeFeature();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int DistrictId;
                int UpazillaId;
                int AddressId;

                DistrictId = this.GetDistrictId();
                UpazillaId = this.GetUpazillaId(DistrictId);
                AddressId = this.GetAddressId(DistrictId, UpazillaId);
                Response.Redirect("~/View/HomeSearchResult.aspx?AddressId=" + AddressId +"");

            }
        }

        public int GetDistrictId()
        {
            int DistrictId = 0;

            ObjDistrict.name = this.TextBoxDistrict.Text;
            MySqlDataReader DistrictInfo = ObjDistrict.ReturnDistrictId(ObjDistrict);

            if (DistrictInfo.HasRows)
            {
                while (DistrictInfo.Read())
                {
                    DistrictId = DistrictInfo.GetInt32(0);
                }
            }

            return DistrictId;
        }

        public int GetUpazillaId(int DistrictId)
        {
            int UpazillaId = 0;

            ObjUpazilla.name = this.TextBoxUpazilla.Text;
            ObjDistrict.d_id = DistrictId;
            MySqlDataReader UpazillaInfo = ObjUpazilla.ReturnUpazillaId(ObjUpazilla, ObjDistrict);

            if (UpazillaInfo.HasRows)
            {
                while (UpazillaInfo.Read())
                {
                    UpazillaId = UpazillaInfo.GetInt32(0);
                }
            }

            return UpazillaId;
        }

        public int GetAddressId(int DistrictId, int UpazillaId)
        {
            int AddressId = 0;

            ObjDistrict.d_id = DistrictId;
            ObjUpazilla.uzilla_id = UpazillaId;

            MySqlDataReader AddressInfo = ObjAddress.ReturnAddressId(ObjDistrict, ObjUpazilla);

            if (AddressInfo.HasRows)
            {
                while (AddressInfo.Read())
                {
                    AddressId = AddressInfo.GetInt32(0);
                }
            }

            return AddressId;
        }

        //public void GetHomeFeatureInfo()
        //{
        //    MySqlDataReader HomeFeatureInfo = ObjHomeFeature.ReturnHomeFeatureInfo();

        //    if (HomeFeatureInfo.HasRows)
        //    {
        //        while (HomeFeatureInfo.Read())
        //        {
        //            this.LabelName.Text = HomeFeatureInfo.GetString(1).ToString();
        //            this.LabelPrice.Text = ("$ " + HomeFeatureInfo.GetFloat(2)).ToString();
        //            this.LabelBath.Text = HomeFeatureInfo.GetInt32(6).ToString();
        //            this.LabelBed.Text = HomeFeatureInfo.GetInt32(7).ToString();
        //            this.LabelArea.Text = HomeFeatureInfo.GetInt32(5).ToString();
        //            this.LabelGarege.Text = HomeFeatureInfo.GetInt32(8).ToString();

        //            ObjHomeFeature.address = HomeFeatureInfo.GetInt32(3);
        //            MySqlDataReader AddressInfo = ObjAddress.ReturnAddressInfo(ObjHomeFeature);
        //            if (AddressInfo.HasRows)
        //            {
        //                while (AddressInfo.Read())
        //                {
        //                    ObjAddress.district = AddressInfo.GetInt32(2);
        //                    ObjAddress.upazilla = AddressInfo.GetInt32(3);

        //                    MySqlDataReader DistrictInfo = ObjDistrict.ReturnDistrictInfo(ObjAddress);
        //                    if (DistrictInfo.HasRows)
        //                    {
        //                        while (DistrictInfo.Read())
        //                        {
        //                            this.LabelDistrict.Text = DistrictInfo.GetString(1).ToString();
        //                        }
        //                    }

        //                    MySqlDataReader UpazillaInfo = ObjUpazilla.ReturnUpazillaInfo(ObjAddress);
        //                    if (UpazillaInfo.HasRows)
        //                    {
        //                        while (UpazillaInfo.Read())
        //                        {
        //                            this.LabelUpazilla.Text = (UpazillaInfo.GetString(1) + ",").ToString();
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //    }
        //}
    }
}