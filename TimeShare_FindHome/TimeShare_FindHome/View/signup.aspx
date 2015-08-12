<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/FrontEnd.Master" CodeBehind="SignUp.aspx.cs" Inherits="TimeShare_FindHome.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SignUpPage" Runat="Server" >
<div id="main-wrapper">
    <div id="main">
        <div id="main-inner">
            
            <script type="text/javascript" src="/Assets/js/jquery.js"></script>
            <style>
.hidden {
    visibility: hidden;
    over-flow: hidden;
    width: 0px;
    height: 0px;
}
</style>
            
</div><!-- /#header -->    </div><!-- /#header-wrapper -->
    <div id="main-wrapper">
        <div id="main">
            <div id="main-inner">
                <div class="container">
                    <div class="block-content block-content-small-padding">
                        <div class="block-content-inner">
                            <div class="row">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <h2 class="center">Register</h2>

                                    <div class="box">
                                        <form method="post" action="http://preview.byaviators.com/template/realocation/register.html?">
                                            <div class="form-group" id="basic_user_info">
                                            <div class="form-group">
                                                <label>E-mail</label>
                                                <input type="email" class="form-control">
                                            </div><!-- /.form-group -->

                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control">
                                            </div><!-- /.form-group -->
                                            
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control">
                                            </div><!-- /.form-group -->

                                            <div class="form-group">
                                                <label>Confirm Password</label>
                                                <input type="password" class="form-control">
                                            </div><!-- /.form-group -->
                                            
                                            <div class="form-group">
                                                <select class="form-control" id="usertype_selection">
                                                  <option value="">Select User Type</option>
                                                  <option value="Buyer" id="buyer_selected">Buyer</option>
                                                  <option value="Developer" id="dev_selected">Developer</option>
                                                </select>
                                                 
                                            </div><!-- /.form-group -->

                                            <div class="form-group">
                                                <input type="button" value="Next" class="btn btn-primary btn-inversed btn-block" id="basic_to_usertype">
                                            </div>
                                            </div>

                                            <div class="form-group hidden" id="buyer_info">
                                                <div class="form-group">
                                                    <label>Occupation</label>
                                                    <input type="text" class="form-control">
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                    <label>Approx. Yearly Income</label>
                                                    <input type="Text" class="form-control">
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                <select class="form-control">
                                                  <option value="">Latest Educational Qualification</option>
                                                  <option value="N/A">N/A</option>
                                                  <option value="PhD">PhD</option>
                                                  <option value="Post Graduate">Post Graduate</option>
                                                  <option value="Graduate">Graduate</option>
                                                  <option value="HSC">HSC</option>
                                                  <option value="SSC">SSC</option>
                                                </select>
                                                    </div>
                                                <div class="form-group">
                                                <select class="form-control">
                                                  <option value="">Marital Status</option>
                                                  <option value="Married">Married</option>
                                                  <option value="Bachelor">Bachelor</option>
                                                  <option value="Widow/Widower">Widow/Widower</option>
                                                  <option value="Divorced">Divorced</option>
                                                 </select>
                                                    </div>

                                                 <div class="form-group">
                                                    <label>No. of family members</label>
                                                    <input type="Text" class="form-control">
                                                </div><!-- /.form-group -->

                                                <div class="form-group">
                                                <input type="button" value="Next" class="btn btn-primary btn-inversed btn-block" id="buyer_to_address">
                                            </div>
                                            </div>

                                            <div class="form-group hidden" id="developer_info">
                                                <div class="form-group">
                                                    <label>Company Name</label>
                                                    <input type="Text" class="form-control">
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                    <label>License No.</label>
                                                    <input type="Text" class="form-control">
                                                </div><!-- /.form-group -->
                                                <div class="form-group">
                                                    <label>Chairman</label>
                                                    <input type="Text" class="form-control">
                                                </div><!-- /.form-group -->

                                                <div class="form-group">
                                                    <input type="button" value="Next" class="btn btn-primary btn-inversed btn-block" id="developer_to_address">
                                                </div>
                                            </div>

                                            <div class="form-group hidden" id="address_info">
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option value="">Select Country</option>
                                                        <option value="Bangladesh">Bangladesh</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option value="">Select District</option>
                                                        <option value="Dhaka">Dhaka</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option value="">Select Area/Upazilla</option>
                                                        <option value="Mirpur">Mirpur</option>
                                                        <option value="Banani">Banani</option>
                                                        <option value="Gulshan">Gulshan</option>
                                                        <option value="Dhanmondi">Dhanmondi</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                <input type="submit" value="Register" class="btn btn-primary btn-inversed btn-block">
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
                            &copy; 2014 Your Company, All Right reserved
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

<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/libraries/isotope/jquery.isotope.min.js"></script>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=true"></script>
<script type="text/javascript" src="assets/js/gmap3.infobox.js"></script>
<script type="text/javascript" src="assets/js/gmap3.clusterer.js"></script>
<script type="text/javascript" src="assets/js/map.js"></script>

<script type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/transition.js"></script>
<script type="text/javascript" src="assets/libraries/bootstrap-sass/vendor/assets/javascripts/bootstrap/collapse.js"></script>
<script type="text/javascript" src="assets/libraries/jquery-bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="assets/libraries/flexslider/jquery.flexslider.js"></script>
<script type="text/javascript" src="assets/js/jquery.chained.min.js"></script>
<script type="text/javascript" src="assets/js/realocation.js"></script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-39841036-5', 'byaviators.com');
  ga('send', 'pageview');
</script>
            
            
<script>
    $("#basic_to_usertype").click(function (e) {
        if (document.getElementById("usertype_selection").value == "Buyer") {
            $("#basic_user_info").addClass('hidden');
            $("#address_info").addClass('hidden');
            $("#developer_info").addClass('hidden');
            $("#buyer_info").removeClass('hidden');
        }
    });
    $("#basic_to_usertype").click(function (e) {
        if (document.getElementById("usertype_selection").value == "Developer") {

            $("#basic_user_info").addClass('hidden');
            $("#address_info").addClass('hidden');
            $("#buyer_info").addClass('hidden');
            $("#developer_info").removeClass('hidden');
        }
    });
    $("#buyer_to_address").click(function (e) {
        $("#basic_user_info").addClass('hidden');
        $("#developer_info").addClass('hidden');
        $("#buyer_info").addClass('hidden');
        $("#address_info").removeClass('hidden');
    });
    $("#developer_to_address").click(function (e) {
        $("#basic_user_info").addClass('hidden');
        $("#developer_info").addClass('hidden');
        $("#buyer_info").addClass('hidden');
        $("#address_info").removeClass('hidden');
    });
</script>            
            
            
            
            
            
            
            
            
            

 </asp:Content>
