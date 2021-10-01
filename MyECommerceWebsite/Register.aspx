 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
                <div class ="container" >
                    <div class ="navbar-header">
                        <button type ="button" class ="navbar-toggle " data-target=".navbar-collapse">
                            <span class =" sr-only">Toggle Navigation</span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>

                        </button>
                        <a class ="navbar-brand" href ="Default.aspx" ><span ><img src="icons/safeIcons.png" alt="MyECommerce" height="30" /></span>MyECommerce </a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a></li>
                            <li><a href="#"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a></li>
                            <li><a href="#"><asp:Literal runat="server" Text="<%$Resources:Resource, ContactUs %>" /></a></li>
                            <li class="dropdown">
                                <a href="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                                <ul class ="dropdown-menu" >
                                    <li class ="dropdown-header"><asp:Literal runat="server" Text="<%$Resources:Resource, Men %>" /></li>
                                    <li role="separator" class ="divider"></li>
                                    <li><a href ="ManTop.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Top %>" /></a></li>
                                    <li><a href="ManPants.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Pants %>" /></a></li>
                                    <li role="separator" class ="divider"></li>
                                    <li class ="dropdown-header"><asp:Literal runat="server" Text="<%$Resources:Resource, Women %>" /></li>
                                    <li role="separator" class ="divider"></li>
                                    <li><a href ="WomanTop.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Top %>" /></a></li>
                                    <li><a href ="WomanLegging.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Leggings %>" /></a></li>
                                </ul>

                            </li>
                            <li ><a href="Register.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Register %>" /></a> </li>
                            <li ><a href="Login.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Login %>" /></a> </li>
                            <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="English" Value="en-us" />
                                <asp:ListItem Text="Turkish" Value="tr" />
                            </asp:DropDownList>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
            
            
            <!---login page--->
            <div class ="center-page">

                <label class="col-xs-11"><asp:Literal runat="server" Text="<%$Resources:Resource, Username %>" />:</label>
                <div class="col-xs-11">
                <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your UserName"></asp:TextBox>
                </div>


                <label class="col-xs-11"><asp:Literal runat="server" Text="<%$Resources:Resource, Password %>" />:</label>
                <div class="col-xs-11">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password"></asp:TextBox>
                </div>


                <label class="col-xs-11"><asp:Literal runat="server" Text="<%$Resources:Resource, ConfirmPassword %>" />:</label>
                <div class="col-xs-11">
                <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm password"></asp:TextBox>
                </div>

                <label class="col-xs-11"><asp:Literal runat="server" Text="<%$Resources:Resource, FullName %>" />:</label>
                <div class="col-xs-11">
                <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                </div>


                <label class="col-xs-11"><asp:Literal runat="server" Text="<%$Resources:Resource, Email %>" />:</label>
                <div class="col-xs-11">
                <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                </div>
                <label class="col-xs-11"></label>
                <div class="col-xs-11">
                    <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="<%$Resources:Resource, Register %>" OnClick="txtsignup_Click" />
                &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                &nbsp;</div>
            </div>
            <!---login page--->

            <!---Footer Contents Start here---->
            <hr />

            <footer class="footer-pos">
                <div class ="container ">
                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; <asp:Literal runat="server" Text="<%$Resources:Resource, Back to top %>" /> &nbsp; &nbsp;</a></p>
                    <p class ="pull-right "><a href="AdminHome.aspx"> <asp:Literal runat="server" Text="<%$Resources:Resource, Admin Login %>" />  </a></p> 
                    <p>&copy;2021 Kerazus.in &middot; <a href ="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, ContactUs %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, Products %>" /></a> </p>
                </div>

            </footer>

            <!---Footer Contents End---->
    </form>
</body>
</html>
