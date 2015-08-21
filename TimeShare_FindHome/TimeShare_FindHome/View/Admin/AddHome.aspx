<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/View/Admin/Admin.Master" CodeBehind="AddHome.aspx.cs" Inherits="TimeShare_FindHome.View.Admin.AddHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AddHomePage" runat="server">
                    <div class="admin-content-main">
                    <div class="admin-content-main-inner">
                        <div class="container-fluid">
                                <div class="box">
    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Home Name Is Required!" ControlToValidate="TextBoxName" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
         <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" placeholder="Name">

         </asp:TextBox>
    </div><!-- /.form-group -->

    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Home Description Is Required!" ControlToValidate="TextBoxDescription" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBoxDescription" runat="server" CssClass="form-control" placeholder="Home Description">

        </asp:TextBox>
    </div><!-- /.form-group -->

    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Home Owner Name Is Required!" ControlToValidate="DropDownListOwner" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="DropDownListOwner" runat="server" CssClass="form-control">
            </asp:DropDownList>
    </div><!-- /.form-group -->
</div><!-- /.box -->

<h2 class="page-header">Attributes</h2>

<div class="box">
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Home Type Is Required!" ControlToValidate="DropDownListType" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="DropDownListType" runat="server" CssClass="form-control">
                <asp:ListItem Value="" Text="Home Type">

                </asp:ListItem>
                <asp:ListItem Value="Apartment" Text="Apartment">

                </asp:ListItem>
                <asp:ListItem Value="Condo" Text="Condo">

                </asp:ListItem>
                <asp:ListItem Value="House" Text="House">

                </asp:ListItem>
                <asp:ListItem Value="Villa" Text="Villa">

                </asp:ListItem>
            </asp:DropDownList>
            </div><!-- /.form-group -->

            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Home Country Is Required!" ControlToValidate="DropDownListCountry" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control">
                        <asp:ListItem Value="" Text="Country">

                        </asp:ListItem>
                        <asp:ListItem Value="Bangladesh" Text="Bangladesh">

                        </asp:ListItem>
                    </asp:DropDownList>
            </div><!-- /.form-group -->

            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Home Upazilla Is Required!" ControlToValidate="DropDownListUpazilla" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="DropDownListUpazilla" runat="server" CssClass="form-control">

                </asp:DropDownList>
            </div><!-- /.form-group -->

            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Home District Is Required!" ControlToValidate="DropDownListDistrict" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="DropDownListDistrict" runat="server" CssClass="form-control">

                </asp:DropDownList>
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->

        <div class="col-sm-6">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Home Price Is Required!" ControlToValidate="TextBoxPrice" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                <asp:TextBox ID="TextBoxPrice" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox>
            </div><!-- /.form-group -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Home Bath Number Is Required!" ControlToValidate="TextBoxBath" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-tint"></i></span>
                <asp:TextBox ID="TextBoxBath" runat="server" CssClass="form-control" placeholder="Baths"></asp:TextBox>
            </div><!-- /.form-group -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Home Room Number Is Required!" ControlToValidate="TextBoxRoom" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-picture-o"></i></span>
                <asp:TextBox ID="TextBoxRoom" runat="server" CssClass="form-control" placeholder="Rooms"></asp:TextBox>
            </div><!-- /.form-group -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Home Bed Number Is Required!" ControlToValidate="TextBoxBed" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-bed"></i></span>
                <asp:TextBox ID="TextBoxBed" runat="server" CssClass="form-control" placeholder="Beds"></asp:TextBox>
            </div><!-- /.form-group -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Home Area Is Required!" ControlToValidate="TextBoxArea" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-area-chart"></i></span>
                <asp:TextBox ID="TextBoxArea" runat="server" CssClass="form-control" placeholder="Area"></asp:TextBox>
            </div><!-- /.form-group -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Home Garage Number Is Required!" ControlToValidate="TextBoxGarage" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-car"></i></span>
                <asp:TextBox ID="TextBoxGarage" runat="server" CssClass="form-control" placeholder="Garages"></asp:TextBox>
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->
    </div><!-- /.row -->
</div><!-- /.box -->

<h2 class="page-header">Selling Condition</h2>

<div class="box">
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Minimum Education Range Is Required!" ControlToValidate="DropDownListEducation" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="DropDownListEducation" runat="server" CssClass="form-control">
                <asp:ListItem Value="" Text="Minimum Education">

                </asp:ListItem>
                <asp:ListItem Value="0" Text="Less than S.S.C">

                </asp:ListItem>
                <asp:ListItem Value="1" Text="S.S.C">

                </asp:ListItem>
                <asp:ListItem Value="2" Text="H.S.C">

                </asp:ListItem>
                <asp:ListItem Value="3" Text="Graduate">

                </asp:ListItem>
            </asp:DropDownList>
            </div><!-- /.form-group -->

            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Minimum Salary Is Required!" ControlToValidate="TextBoxSalary" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBoxSalary" runat="server" CssClass="form-control" Placeholder="Minimum Salary"></asp:TextBox>
            </div><!-- /.form-group -->

            <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Excluded Home Town Name Is Required!" ControlToValidate="TextBoxHomeTown" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBoxHomeTown" runat="server" CssClass="form-control" placeholder="Excluded Home Town">

                </asp:TextBox>
            </div><!-- /.form-group -->
        </div><!-- /.col-* -->
    </div><!-- /.row -->
</div><!-- /.box -->

<div class="row">
    <div class="col-sm-12">
        <h2 class="page-header">Gallery</h2>

        <div class="box">
            <input type="file" id="input-file">
        </div><!-- /.box -->
    </div>
</div><!-- /.row -->

<div class="center">
    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="btn btn-xl">

    </asp:Button>
</div><!-- /.center -->
                        </div><!-- /.container-fluid -->
                    </div><!-- /.admin-content-main-inner -->
                </div><!-- /.container-fluid -->
</asp:Content>
