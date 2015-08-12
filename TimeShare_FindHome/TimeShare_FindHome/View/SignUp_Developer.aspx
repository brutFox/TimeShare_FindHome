<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp_Developer.aspx.cs" Inherits="TimeShare_FindHome.View.SignUp_Developer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="shortcut icon" href="#"/>
    <link rel="stylesheet" type="text/css" href="~/Assets/libraries/font-awesome/css/font-awesome.css" media="screen, projection"/>
    <link rel="stylesheet" type="text/css" href="~/Assets/libraries/jquery-bxslider/jquery.bxslider.css" media="screen, projection"/>
    <link rel="stylesheet" type="text/css" href="~/Assets/libraries/flexslider/flexslider.css" media="screen, projection"/>
    <link rel="stylesheet" type="text/css" href="~/Assets/css/realocation.css" media="screen, projection"/>

    <link href="http://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css"/>


    <title>
        Timeshare | SignUp
    </title>
</head>

<body>

<div id="wrapper">
    <div id="header-wrapper">
        <div id="header">
    <div id="header-inner">
        <div class="header-bar">
            <div class="container">
                <div class="header-infobox">
                    <strong>E-mail:</strong> <a href="#">Contact@timeshare.com</a>
                </div><!-- /.header-infobox-->

                <div class="header-infobox">
                    <strong>Phone:</strong> 800-123-4567
                </div><!-- /.header-infobox-->

                <ul class="header-bar-nav nav nav-register">
    <li><a href="login.html">Login</a></li>
    <li><a href="register.html">Sign Up</a></li>
</ul>            </div><!-- /.container -->
        </div><!-- /.header-bar -->

        <div class="header-top">
            <div class="container">
                <div class="header-identity">
                    <a href="index-2.html" class="header-identity-target">
                        <span class="header-icon"><i class="fa fa-home"></i></span>
                        <span class="header-title">TimeShare</span><!-- /.header-title -->
                        <span class="header-slogan">Real Estate &amp; Rental Bussiness Website</span><!-- /.header-slogan -->
                    </a><!-- /.header-identity-target-->
                </div><!-- /.header-identity -->

                <div class="header-actions pull-right">
                    <a href="submit-property.html" class="btn btn-primary"><i class="fa fa-plus"></i>Sign up</a>
                </div><!-- /.header-actions -->

                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".header-navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div><!-- /.container -->
        </div><!-- .header-top -->
    </div><!-- /.header-inner -->
</div><!-- /#header -->    </div><!-- /#header-wrapper -->
    <div id="main-wrapper">
        <div id="main">
            <div id="main-inner">
                <div class="container">
                    <div class="block-content block-content-small-padding">
                        <div class="block-content-inner">
                            <div class="row">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <h2 class="center">SignUp</h2>


                                     <div class="box">
                                        <form Runat="Server">

                                            <div class="form-group" id="developer_info">
                                                <div class="form-group">
                                                    <label>Company Name</label>
                                                    <asp:TextBox runat="server" CssClass="form-control" ID="reg_company_name"></asp:TextBox>
                                                    
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                    <label>License No.</label>
                                                    <asp:TextBox runat="server" CssClass="form-control" ID="reg_company_license"></asp:TextBox>
                                             
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                    <label>Chairman</label>
                                                    <asp:TextBox runat="server" CssClass="form-control" ID="reg_chairman"></asp:TextBox>
                                                    
                                                </div><!-- /.form-group -->

                                                <div class="form-group">
                                                    <asp:Button ID="developer_to_address" value="Next" runat="server" Text="Next" CssClass="btn btn-primary btn-inversed btn-block" OnClick="developer_to_address_Click"></asp:Button>
                                                </div><!-- /.form-group -->
                                            </div>





                                        </form>
                                    </div><!-- /.box -->


                                    </div>
                            </div><!-- /.row -->
                        </div><!-- /.block-content-inner -->
                    </div><!-- /.block-content -->
                </div><!-- /.container -->
            </div><!-- /#main-inner -->
        </div><!-- /#main -->
    </div><!-- /#main-wrapper -->

    <div id="footer-wrapper">
        <div id="footer">
            <div id="footer-inner">
                
                <div class="footer-bottom">
                    <div class="container">
                        <p class="center no-margin">
                            &copy; 2015 Timeshare, All Right reserved
                        </p>

                        <div class="center">
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul><!-- /.social -->
                        </div><!-- /.center -->
                    </div><!-- /.container -->
                </div><!-- /.footer-bottom -->
            </div><!-- /#footer-inner -->
        </div><!-- /#footer -->
    </div><!-- /#footer-wrapper -->
</div><!-- /#wrapper -->


<script type="text/javascript" src="/Assets/js/jquery.js"></script>
<script type="text/javascript" src="/Assets/libraries/isotope/jquery.isotope.min.js"></script>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=true"></script>
<script type="text/javascript" src="/Assets/js/gmap3.infobox.js"></script>
<script type="text/javascript" src="/Assets/js/gmap3.clusterer.js"></script>
<script type="text/javascript" src="/Assets/js/map.js"></script>

<script type="text/javascript" src="/Assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/transition.js"></script>
<script type="text/javascript" src="/Assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/collapse.js"></script>
<script type="text/javascript" src="/Assets/libraries/jquery-bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/Assets/libraries/flexslider/jquery.flexslider.js"></script>
<script type="text/javascript" src="/Assets/js/jquery.chained.min.js"></script>
<script type="text/javascript" src="/Assets/js/realocation.js"></script>

<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-39841036-5', 'byaviators.com');
    ga('send', 'pageview');
</script>

</body>
</html>
