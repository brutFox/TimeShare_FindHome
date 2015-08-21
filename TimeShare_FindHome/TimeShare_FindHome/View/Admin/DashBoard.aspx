<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/Admin/Admin.Master" CodeBehind="DashBoard.aspx.cs" Inherits="TimeShare_FindHome.View.admin.DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashBoardPage" runat="server">
                    <div class="admin-content-main">
                    <div class="admin-content-main-inner">
                        <div class="container-fluid">
                                <div class="row">
        <div class="col-sm-12">
            <div id="chart">
                <svg></svg>
            </div><!-- /#chart -->
        </div>
    </div><!-- /.row -->

    <div class="row">
        <div class="col-sm-12 col-md-6">
            <h3 class="page-header">Recent Properties</h3>

            <div class="row">
    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/1.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Apartment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->

    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/2.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Apartment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->

    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/3.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Apartment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->

    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/4.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Aparatment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->

    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/5.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Apartment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->

    <div class="col-sm-4 col-md-6 col-lg-4">
        <div class="property-preview">
            <div class="property-preview-image">
                <a href="#" class="property-preview-action">
                    <i class="fa fa-times"></i>
                </a><!-- /.property-preview-action -->

                <a href="#">
                    <img src="/Assets/Admin/img/tmp/medium/6.jpg" alt="">
                </a>
            </div><!-- /.property-preview-image -->

            <div class="property-preview-content">
                <h2><a href="#">Apartment</a></h2>
                <a href="#" class="property-preview-action-secondary">Edit</a>
            </div><!-- /.property-preview-content -->
        </div><!-- /.property-preview -->
    </div><!-- /.col-* -->
</div><!-- /.row -->
        </div><!-- /.col-* -->

        <div class="col-sm-12 col-md-6">
            <h3 class="page-header">Recent activity</h3>

<div class="activity">
    <ul>
        <li>
            <div class="icon red">
                <i class="fa fa-times"></i>
            </div><!-- /.icon -->

            <div class="content">
                Property <a href="#">#5432</a> has been published by <a href="#">admin</a>.
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon cyan">
                <i class="fa fa-pencil"></i>
            </div><!-- /.icon -->

            <div class="content">
                Admin edited property with ID <a href="#">#12345</a>.
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon teal">
                <i class="fa fa-bug"></i>
            </div><!-- /.icon -->

            <div class="content">
                System has reported 3 new bugs.
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon orange">
                <i class="fa fa-cc-mastercard"></i>
            </div><!-- /.icon -->

            <div class="content">
                Your debit card will expire in two weeks.
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon brown">
                <i class="fa fa-users"></i>
            </div><!-- /.icon -->

            <div class="content">
                8 users are avaiting registration confimations.
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon green">
                <i class="fa fa-paypal"></i>
            </div><!-- /.icon -->

            <div class="content">
                PayPal transaction has been completed. <a href="#">View more</a>
            </div><!-- /.content -->
        </li>

        <li>
            <div class="icon red">
                <i class="fa fa-times"></i>
            </div><!-- /.icon -->

            <div class="content">
                Property <a href="#">#5432</a> has been published by <a href="#">admin</a>.
            </div><!-- /.content -->
        </li>
    </ul>
</div><!-- /.activity -->
        </div><!-- /.col-* -->
    </div><!-- /.row -->
                        </div><!-- /.container-fluid -->
                    </div><!-- /.admin-content-main-inner -->
                </div><!-- /.container-fluid -->
</asp:Content>