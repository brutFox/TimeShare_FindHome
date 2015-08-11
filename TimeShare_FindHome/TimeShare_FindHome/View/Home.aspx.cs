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
        Address ObjAddress = new Address();
        District ObjDistrict = new District();
        Upazilla ObjUpazilla = new Upazilla();

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
    }
}