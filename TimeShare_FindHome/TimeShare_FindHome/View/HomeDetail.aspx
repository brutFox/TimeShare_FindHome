<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/FrontEnd.Master" CodeBehind="HomeDetail.aspx.cs" Inherits="TimeShare_FindHome.View.HomeDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeDetailPage" runat="server">
    <div id="main-wrapper">
    <div id="main">
        <div id="main-inner">
            <div id="map-property"></div><!-- /.map-property -->

            <div class="container">
                <div class="block-content block-content-small-padding">
                    <div class="block-content-inner">
                        <div class="row">
                            <div class="col-sm-9">
                                <h2 class="property-detail-title">
                                <asp:Label ID="LabelName" runat="server" Text="">

                                </asp:Label>
                                </h2>
                                <h3 class="property-detail-subtitle">
                                    <asp:Label ID="LabelUpazilla" runat="server" Text="">

                                    </asp:Label>
                                    <asp:Label ID="LabelDistrict" runat="server" Text="">
                                              
                                    </asp:Label>
                                     <strong>
                                        <asp:Label ID="LabelPrice" runat="server" Text="">

                                        </asp:Label>
                                     </strong>
                                </h3>
                                <div class="property-detail-overview">
                                    <div class="property-detail-overview-inner clearfix">
                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label1" runat="server" Text="Price:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                <asp:Label ID="LabelPrice2" runat="server" Text="">

                                                </asp:Label>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->

                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label2" runat="server" Text="Type:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                    <asp:Label ID="LabelType" runat="server" Text="">

                                                    </asp:Label>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->

                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label13" runat="server" Text="Area:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                <asp:Label ID="LabelArea" runat="server" Text="">

                                                </asp:Label>
                                                <sup>2</sup>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->

                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label3" runat="server" Text="Baths:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                <asp:Label ID="LabelBath" runat="server" Text="">

                                                </asp:Label>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->

                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label4" runat="server" Text="Beds:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                <asp:Label ID="LabelBed" runat="server" Text="">

                                                </asp:Label>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->

                                        <div class="property-detail-overview-item col-sm-6 col-md-2">
                                            <strong>
                                                <asp:Label ID="Label5" runat="server" Text="Gareges:">

                                                </asp:Label>
                                            </strong>
                                            <span>
                                                <asp:Label ID="LabelGarege" runat="server" Text="">

                                                </asp:Label>
                                            </span>
                                        </div><!-- /.property-detail-overview-item -->
                                    </div><!-- /.property-detail-overview-inner -->
                                </div><!-- /.property-detail-overview -->

                                <div class="flexslider">
                                    <ul class="slides">

                                        <li data-thumb="/Assets/img/tmp/properties/large/3.jpg">
                                            <img src="/Assets/img/tmp/properties/large/3.jpg" alt="">
                                        </li>

                                        <li data-thumb="/Assets/img/tmp/properties/large/12.jpg">
                                            <img src="/Assets/img/tmp/properties/large/12.jpg" alt="">
                                        </li>

                                        <li data-thumb="/Assets/img/tmp/properties/large/5.jpg">
                                            <img src="/Assets/img/tmp/properties/large/5.jpg" alt="">
                                        </li>

                                        <li data-thumb="/Assets/img/tmp/properties/large/6.jpg">
                                          <img src="/Assets/img/tmp/properties/large/6.jpg" alt="">
                                        </li>
                                    </ul><!-- /.slides -->
                                </div><!-- /.flexslider -->

                                <hr>

                                <h2>Description</h2>

                                <p>
                                  <asp:Label ID="LabelDescription" runat="server" Text="">

                                  </asp:Label>
                                </p>

                                <hr>
                            </div>

                            <div class="col-sm-3">
                                <div class="sidebar">
                                    <div class="sidebar-inner">
                                        <div class="widget">
    <h3 class="widget-title">Social Networks</h3>

    <ul class="social social-boxed">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
    </ul><!-- /.social-->
</div><!-- /.widget -->                                        <div class="widget">
    <h3 class="widget-title">Enquire</h3>

    <div class="widget-content">
        <form method="post" action="http://preview.byaviators.com/template/realocation/property-detail.html?">
            <div class="form-group">
                <label>Your e-mail</label>
                <input type="text" value="" class="form-control">
            </div><!-- /.form-group -->

            <div class="form-group">
                <label>Date From</label>
                <input type="date" value="" class="form-control">
            </div><!-- /.form-group -->

            <div class="form-group">
                <label>Date To</label>
                <input type="date" value="" class="form-control">
            </div><!-- /.form-group -->

            <div class="form-group">
                <label>Message</label>
                <textarea class="form-control"></textarea>
            </div><!-- /.form-group -->

            <div class="form-group">
                <input type="text" value="Contact" class="btn btn-block btn-primary btn-inversed">
            </div><!-- /.form-group -->
        </form>
    </div><!-- /.widget-content -->
</div><!-- /.widget -->                                        <div class="widget">
    <h3 class="widget-title">Recent Properties</h3>

    <div class="properties-small-list">
        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/small/10.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">Emerson Street</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->

        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/small/7.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">Jeopardy Ln</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->

        <div class="property-small clearfix">
            <div class="property-small-picture col-sm-12 col-md-4">
                <div class="property-small-picture-inner">
                    <a href="#" class="property-small-picture-target">
                        <img src="/Assets/img/tmp/properties/small/9.jpg" alt="">
                    </a>
                </div><!-- /.property-small-picture -->
            </div><!-- /.property-small-picture -->

            <div class="property-small-content col-sm-12 col-md-8">
                <h3 class="property-small-title"><a href="#">Jefferson Blvd</a></h3><!-- /.property-small-title -->
                <div class="property-small-price">$ 1,800 <span class="property-small-price-suffix">/ per month</span></div><!-- /.property-small-price -->
            </div><!-- /.property-small-content -->
        </div><!-- /.property-small -->
    </div><!-- /.properties-small-list -->
</div><!-- /.widget -->                                        
<div class="widget">

</div><!-- /.widget -->                                    </div><!-- /.sidebar-inner -->
                                </div><!-- /.sidebar -->
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.block-content-inner -->
                </div><!-- /.block-content -->
            </div><!-- /.container -->
</asp:Content>