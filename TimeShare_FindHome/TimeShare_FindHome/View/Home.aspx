<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/FrontEnd.Master" CodeBehind="Home.aspx.cs" Inherits="TimeShare_FindHome.Home" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
<%@ Import Namespace="TimeShare_FindHome.Model" %>
<%@ Import Namespace="System.Configuration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomePage" Runat="Server" >
<div id="main-wrapper">
    <div id="main">
        <div id="main-inner">

            <!-- MAP -->
<div class="block-content no-padding">
    <div class="block-content-inner">
        <div class="map-wrapper">
            <div id="map" data-style="1"></div><!-- /#map -->

            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8 col-md-3 col-md-offset-9 map-navigation-positioning">
                        <div class="map-navigation-wrapper">
                            <div class="map-navigation">
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
                                        <asp:Button ID="Button1" runat="server" Text="Filter Properties" CssClass="btn btn-primary btn-inversed btn-block"></asp:Button>
                                    </div><!-- /.form-group -->
                            </div><!-- /.map-navigation -->
                        </div><!-- /.map-navigation-wrapper -->
                    </div><!-- /.col-sm-3 -->
                </div><!-- /.row -->
            </div><!-- /.container -->

        </div><!-- /.map-wrapper -->
    </div><!-- /.block-content-inner -->
</div><!-- /.block-content -->
            <div class="container">
                <!-- SLOGAN -->
<div class="block-content background-primary background-map block-content-small-padding fullwidth">
    <div class="block-content-inner">
        <h2 class="no-margin center caps">Only Real Estate Template You Will Ever Need</h2>
    </div><!-- /.block-content-iner -->
</div><!-- /.block-content-->                <!-- ISOTOPE GRID -->
<div class="block-content block-content-small-padding">
<div class="block-content-inner">
<h2 class="center">Best Rated Properties</h2>

<ul class="properties-filter">
    <li class="selected"><a href="#" data-filter="*"><span>All</span></a></li>
    <li><a href="#" data-filter=".property-featured"><span>Featured</span></a></li>
    <li><a href="#" data-filter=".property-rent"><span>Rent</span></a></li>
    <li><a href="#" data-filter=".property-sale"><span>Sale</span></a></li>
</ul>
<!-- /.property-filter -->

<div class="properties-items">
<div class="row">
    <%
        MySqlDataReader HomeFeatureInfo = ObjHomeFeature.ReturnHomeFeatureInfo();

        if (HomeFeatureInfo.HasRows)
        {
            while (HomeFeatureInfo.Read())
            {
                this.LabelName.Text = HomeFeatureInfo.GetString(1).ToString();
                this.LabelPrice.Text = ("$ " + HomeFeatureInfo.GetFloat(2)).ToString();
                this.LabelBath.Text = HomeFeatureInfo.GetInt32(6).ToString();
                this.LabelBed.Text = HomeFeatureInfo.GetInt32(7).ToString();
                this.LabelArea.Text = HomeFeatureInfo.GetInt32(5).ToString();
                this.LabelGarege.Text = HomeFeatureInfo.GetInt32(8).ToString();

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
%>                
    <div class="property-item property-featured col-sm-6 col-md-3">
        <div class="property-box">
            <div class="property-box-inner">
                <h3 class="property-box-title">
                    <a href="property-detail.html">
                    <asp:Label ID="LabelName" runat="server" Text="">

                    </asp:Label>
                    </a>
                </h3>
                <h4 class="property-box-subtitle">
                    <a href="property-detail.html">
                    <asp:Label ID="LabelUpazilla" runat="server" Text="">

                    </asp:Label>
                        <asp:Label ID="LabelDistrict" runat="server" Text="">

                        </asp:Label>
                    </a>
                </h4>

                <div class="property-box-picture">
                    <div class="property-box-price">
                        <asp:Label ID="LabelPrice" runat="server" Text="">
                        </asp:Label>
                    </div>
                    <!-- /.property-box-price -->
                    <div class="property-box-picture-inner">
                        <a href="property-detail.html" class="property-box-picture-target">
                            <img src="/Assets/img/tmp/properties/medium/1.jpg" alt="">
                        </a><!-- /.property-box-picture-target -->
                    </div>
                    <!-- /.property-picture-inner -->
                </div>
                <!-- /.property-picture -->

                <div class="property-box-meta">
                    <div class="property-box-meta-item col-xs-3 col-sm-3">
                        <strong>
                            <asp:Label ID="LabelBath" runat="server" Text="">
                            </asp:Label>
                        </strong>
                        <asp:Label ID="Label6" runat="server" Text="Baths">
                        </asp:Label>
                    </div>
                    <!-- /.col-sm-3 -->

                    <div class="property-box-meta-item col-xs-3 col-sm-3">
                        <strong>
                            <asp:Label ID="LabelBed" runat="server" Text="">
                            </asp:Label>
                        </strong>
                        <asp:Label ID="Label7" runat="server" Text="Beds">
                        </asp:Label>
                    </div>
                    <!-- /.col-sm-3 -->

                    <div class="property-box-meta-item col-xs-3 col-sm-3">
                        <strong>
                            <asp:Label ID="LabelArea" runat="server" Text="">
                            </asp:Label>
                        </strong>
                        <asp:Label ID="Label8" runat="server" Text="Area">
                        </asp:Label>
                    </div>
                    <!-- /.col-sm-3 -->

                    <div class="property-box-meta-item col-xs-3 col-sm-3">
                        <strong>
                            <asp:Label ID="LabelGarege" runat="server" Text="">
                            </asp:Label>
                        </strong>
                        <asp:Label ID="Label9" runat="server" Text="Gareges">
                        </asp:Label>
                    </div>
                    <!-- /.col-sm-3 -->
                </div>
                <!-- /.property-box-meta -->
            </div>
            <!-- /.property-box-inner -->
        </div>
        <!-- /.property-box -->
    </div>
    <!-- /.property-item -->                
<%                
            }
        }
    %>
</div>
<!-- /.row -->
</div>
<!-- /.properties-items -->

</div>
<!-- /.block-content-inner -->
</div><!-- /.block-content -->                
<!-- CAROUSEL -->
<div class="block-content background-secondary background-map fullwidth">
<div class="block-content-inner">
<ul class="bxslider clearfix">
<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Jefferson Blvd</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Palo Alto, SA</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/5.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 1,200 <span class="property-box-price-suffix">/ month</span></div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/4.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">St Johns Pl</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Brooklyn</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/12.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Bedford Ave</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Civic Betterment</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/6.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/3.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Jeopardy Ln</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Manhattan</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/10.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Emerson Street</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Brooklyn</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/2.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/8.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Culver Blvd</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Kingman Park</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/12.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Hansbury Ave</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Civic Betterment</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/4.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/5.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Everett Ave</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Silicon Valley, SA</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/11.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">South St</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Palo Alto, SA</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/6.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/1.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Emerson Street</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Manhattan</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/9.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Bedford Ave</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Palo Alto, SA</a></h4>
            <div class="property-box-label property-box-label-primary">Sale</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/7.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">3117 Cozy River</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Needy, Jersey</a></h4>

            <div class="property-box-picture">
                <div class="property-box-price">$ 13,000</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/1.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>

<li>
    <div class="property-box no-border small">
        <div class="property-box-inner">
            <h3 class="property-box-title"><a href="#">Evergreen Tr</a></h3>
            <h4 class="property-box-subtitle"><a href="#">Kingman Park</a></h4>
            <div class="property-box-label property-box-label-primary">Rent</div><!-- /.property-box-label -->

            <div class="property-box-picture">
                <div class="property-box-price">$ 89,200</div><!-- /.property-box-price -->
                <div class="property-box-picture-inner">
                    <a href="#" class="property-box-picture-target">
                        <img src="/Assets/img/tmp/properties/medium/5.jpg" alt="">
                    </a><!-- /.property-box-picture-target -->
                </div><!-- /.property-picture-inner -->
            </div><!-- /.property-picture -->
        </div><!-- /.property-box-inner -->
    </div><!-- /.property-box -->
</li>
</ul>
</div><!-- /.block-content-inner -->
</div><!-- /.block-content -->                <!-- STATISTICS -->
<div class="block-content block-content-small-padding">
    <div class="block-content-inner">
        <div class="center">
            <h2 class="color-primary">Over 10 000 Properties In Our Directory</h2>
        </div><!-- /.center -->

        <div class="row">
            <div class="col-sm-2 col-sm-offset-2">
                <div class="block-stats background-dots background-primary color-white">
                    <strong>3500+</strong>
                    <span>Apartments</span>
                </div><!-- /.block-stats -->
            </div>
            <div class="col-sm-2">
                <div class="block-stats background-dots background-primary color-white">
                    <strong>3000+</strong>
                    <span>Houses</span>
                </div><!-- /.block-stats -->
            </div>
            <div class="col-sm-2">
                <div class="block-stats background-dots background-primary color-white">
                    <strong>5000+</strong>
                    <span>Condos</span>
                </div><!-- /.block-stats -->
            </div>
            <div class="col-sm-2">
                <div class="block-stats background-dots background-primary color-white">
                    <strong>2500+</strong>
                    <span>Areas</span>
                </div><!-- /.block-stats -->
            </div>
        </div><!-- /.row -->
    </div><!-- /.block-content-inner -->
</div><!-- /.block-content -->
    </div>
</asp:Content>
