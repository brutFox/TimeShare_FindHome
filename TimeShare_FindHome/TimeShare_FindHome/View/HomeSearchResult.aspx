<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/FrontEnd.Master" CodeBehind="HomeSearchResult.aspx.cs" Inherits="TimeShare_FindHome.View.HomeSearchResult" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
<%@ Import Namespace="TimeShare_FindHome.Model" %>
<%@ Import Namespace="System.Configuration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeSearchPage" runat="server">
        <div id="main-wrapper">
        <div id="main">
            <div id="main-inner">
                <div class="container">
                    <div class="block-content block-content-small-padding">
                        <div class="block-content-inner">
                            <div class="row">
                                <div class="col-sm-9">
                                    <h2>Properties Rows</h2>

                                    <div class="property-rows">
<%
    ObjHomeFeature.address = AddressId2;

    MySqlDataReader HomeFeatureInfo = ObjHomeFeature.ReturnHomeFeatureInfoByAddress(ObjHomeFeature);

    if (HomeFeatureInfo.HasRows)
    {
        while (HomeFeatureInfo.Read())
        {
            this.LabelBath.Text = HomeFeatureInfo.GetInt32(6).ToString();
            this.LabelBed.Text = HomeFeatureInfo.GetInt32(7).ToString();
            this.LabelArea.Text = HomeFeatureInfo.GetInt32(5).ToString();
            this.LabelGarege.Text = HomeFeatureInfo.GetInt32(8).ToString();
            this.LabelPrice.Text = ("$ " + HomeFeatureInfo.GetFloat(2)).ToString();
            this.LabelName.Text = HomeFeatureInfo.GetString(1).ToString();
            this.LabelDescription.Text = HomeFeatureInfo.GetString(9).ToString();

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
%>            
                                        <div class="property-row">
                                            <div class="row">
                                                <div class="property-row-picture col-sm-6 col-md-6 col-lg-4 col-md-6 col-lg-4">
                                                    <div class="property-row-picture-inner">
                                                        <a href="#" class="property-row-picture-target">
                                                            <img src="/Assets/img/tmp/properties/medium/4.jpg" alt="">
                                                        </a>

                                                        <div class="property-row-meta">
                                                            <div class="property-row-meta-item col-sm-3">
                                                                <strong>
                                                                    <asp:Label ID="LabelBath" runat="server" Text="">

                                                                    </asp:Label>
                                                                </strong>
                                                                <span>
                                                                    <asp:Label ID="Label2" runat="server" Text="Bath">

                                                                    </asp:Label>
                                                                </span>
                                                            </div><!-- /.col-sm-3 -->

                                                            <div class="property-row-meta-item col-sm-3">
                                                                <strong>
                                                                    <asp:Label ID="LabelBed" runat="server" Text="">

                                                                    </asp:Label>
                                                                </strong>
                                                                <span>
                                                                    <asp:Label ID="Label4" runat="server" Text="Beds">

                                                                    </asp:Label>
                                                                </span>
                                                            </div><!-- /.col-sm-3 -->

                                                            <div class="property-row-meta-item col-sm-3">
                                                                <strong>
                                                                    <asp:Label ID="LabelArea" runat="server" Text="160">

                                                                    </asp:Label>
                                                                </strong>
                                                                <span>
                                                                    <asp:Label ID="Label10" runat="server" Text="Area">

                                                                    </asp:Label>
                                                                </span>
                                                            </div><!-- /.col-sm-3 -->

                                                            <div class="property-row-meta-item col-sm-3">
                                                                <strong>
                                                                    <asp:Label ID="LabelGarege" runat="server" Text="Label">

                                                                    </asp:Label>
                                                                </strong>
                                                                <span>
                                                                    <asp:Label ID="Label11" runat="server" Text="Garages">

                                                                    </asp:Label>
                                                                </span>
                                                            </div><!-- /.col-sm-3 -->
                                                        </div><!-- /.property-row-meta -->
                                                    </div><!-- /.property-row-picture -->
                                                </div><!-- /.property-row-picture -->

                                                <div class="property-row-content col-sm-6 col-md-6 col-lg-8 col-md-6 col-lg-8">
                                                    <h3 class="property-row-title">
                                                        <a href="#">
                                                            <asp:Label ID="LabelName" runat="server" Text="">

                                                            </asp:Label>
                                                        </a>
                                                    </h3><!-- /.property-row-title -->

                                                    <h4 class="property-row-subtitle">
                                                        <a href="#">
                                                            <asp:Label ID="LabelUpazilla" runat="server" Text="">

                                                            </asp:Label>
                                                            <asp:Label ID="LabelDistrict" runat="server" Text="">

                                                            </asp:Label>
                                                        </a>
                                                    </h4><!-- /.property-row-subtitle -->

                                                    <div class="property-row-price">
                                                        <asp:Label ID="LabelPrice" runat="server" Text="">

                                                        </asp:Label>
                                                    </div><!-- /.property-row-price -->
                                                    <p class="property-row-body">
                                                        <asp:Label ID="LabelDescription" runat="server" Text="">

                                                        </asp:Label>
                                                    </p><!-- /.property-row-body -->
                                                </div><!-- /.property-row-content -->
                                            </div><!-- /.row -->
                                        </div><!-- /.property-row -->
<%                                                    
            
        }
    }
%>
                                    </div><!-- /.property-rows -->
                                </div>
                                <div class="col-sm-3">
                                    <div class="sidebar">
                                        <div class="sidebar-inner">
                                            <div class="widget">
    <h3 class="widget-title">Filter</h3>

    <div class="widget-content">
            <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label>Country</label>
                                        <div class="select-wrapper">
                                           <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control">
                                               <asp:ListItem Value="">
                                                   Select Country
                                               </asp:ListItem>
                                               <asp:ListItem Value="Bangladesh">
                                                   Bangladesh
                                               </asp:ListItem>
                                           </asp:DropDownList>
                                        </div><!-- /.select-wrapper -->
                                    </div><!-- /.form-group -->

                                    <div class="form-group col-sm-12">
                                        <label>District</label>
                                            <asp:TextBox ID="TextBoxDistrict" runat="server" CssClass="form-control">

                                            </asp:TextBox>
                                    </div><!-- /.form-group -->

                                    <div class="form-group col-sm-12">
                                        <label>Upazilla</label>
                                           <asp:TextBox ID="TextBoxUpazilla" runat="server" CssClass="form-control">

                                            </asp:TextBox>
                                    </div><!-- /.form-group -->

                                    <div class="form-group col-sm-12">
                                        <asp:Button ID="Button1" runat="server" Text="Filter" CssClass="btn btn-primary btn-inversed btn-block"></asp:Button>
                                    </div><!-- /.form-group -->
            </div><!-- /.row -->

    </div><!-- /.widget-content -->
</div><!-- /.widget -->                                            
<div class="widget">
    <h3 class="widget-title">Recent Properties</h3>

    <div class="properties-small-list">
        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/11.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">Bedford Ave</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->

        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/12.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">St Johns Pl</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->

        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/9.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">Jeopardy Ln</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->
    </div><!-- /.properties-small-list -->
</div><!-- /.widget -->                                        </div><!-- /.sidebar-inner -->
                                    </div><!-- /.sidebar -->
                                </div>
                            </div><!-- /.row -->
                        </div><!-- /.block-content-inner -->
                    </div><!-- /.block-content -->
                </div><!-- /.container -->
            </div><!-- /#main-inner -->
</asp:Content>
