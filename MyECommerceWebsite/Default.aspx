<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
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
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/safeIcons.png" alt="MyEShoppoing" height="30" /></span>MyEShopping
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a> </li>
                        <li><a href="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a> </li>
                        <li class="drodown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><asp:Literal runat="server" Text="<%$Resources:Resource, Products %>" /><b
                            class="caret"></b></a>
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

                        <li id="btnSignUP" runat="server"><a href="Register.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Register %>" /></a> </li>
                        <li id="btnSignIN" runat="server"><a href="Login.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Login %>" /></a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                Text="<%$Resources:Resource, Logout %>" OnClick="btnlogout_Click" />
                            <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="English" Value="en-us" />
                                <asp:ListItem Text="Turkish" Value="tr" />
                            </asp:DropDownList>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!---Slayt Show--->
        <br />
        <br />
        <br />
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="ImgSlider/1.jpg" alt="Los Angeles" style="width: 100%; height:251px">
                            <div class="carousel-caption">
                                <h3><asp:Literal runat="server" Text="<%$Resources:Resource, Women Shopping %>" /></h3>
                                <p>50% off</p>
                                <p><a class="btn btn-lg btn-primary" href="Products.aspx" role="button"><asp:Literal runat="server" Text="<%$Resources:Resource, Buy now %>" /></a></p></div>
                        </div>
                        <div class="item">
                            <img src="ImgSlider/2.png" alt="Chicago" style="width: 100%; height:251px">>
                            <div class="carousel-caption">
                                <h3><asp:Literal runat="server" Text="<%$Resources:Resource, Ace Mobile Shopping %>" /></h3>
                                <p>20% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="ImgSlider/3.png" alt="New york" style="width: 100%; height:251px">
                            <div class="carousel-caption">
                                <h3><asp:Literal runat="server" Text="<%$Resources:Resource, On mobile you can get %>" /></h3>
                                <p>25% off</p>
                            </div>
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                    </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                        href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                        </span><span class="sr-only">Next</span> </a>
                </div>
            </div>

            <!---Slayt Show--->
    </div>
    <!---Ara Icerik--->
            <div class="container center ">
                <div class="row ">
                    <div class="col-lg-4">
                        <img class="img-circle " src="Images/iphone12.jpeg" alt="thumb" width="140" height="140" />
                        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, Mobiles %>" /></h2>
                        <p>
                            <asp:Literal runat="server" Text="<%$Resources:Resource, Phonedesc %>" /></p>

                        <p><a class="btn btn-default " href="#" role="button"><asp:Literal runat="server" Text="<%$Resources:Resource, View More %>" /> &raquo;</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle " src="Images/Shoes.jpeg" alt="thumb" width="140" height="140" />
                        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, Footwear %>" /></h2>
                        <p><asp:Literal runat="server" Text="<%$Resources:Resource, Description for Shoes %>" /></p>
                        <p>
                            <a class="btn btn-default " href="#" role="button"><asp:Literal runat="server" Text="<%$Resources:Resource, View More %>" /> &raquo;</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle " src="Images/tshirt.jpeg" alt="thumb" width="140" height="140" />
                        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, Clothings %>" /></h2>
                        <p><asp:Literal runat="server" Text="<%$Resources:Resource, Description for Clothings %>" /></p>
                        <p>
                            <a class="btn btn-default " href="#" role="button"><asp:Literal runat="server" Text="<%$Resources:Resource, View More %>" /> &raquo;</a></p>
                    </div>
                </div>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <asp:Literal runat="server" Text="<%$Resources:Resource, BOXING DAY DEAL %>" /></div>
                    <div class="panel-body">
                        <div class="row" style="padding-top: 50px">
                            <asp:Repeater ID="rptrProducts" runat="server">
                                <ItemTemplate>
                                    <div class="col-sm-3 col-md-3">
                                        <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                            <div class="thumbnail">
                                                <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                                    alt="<%# Eval("ImageName") %>" />
                                                <div class="caption">
                                                    <div class="probrand">
                                                        <%# Eval ("BrandName") %>
                                                    </div>
                                                    <div class="proName">
                                                        <%# Eval ("PName") %>
                                                    </div>
                                                    <div class="proPrice">
                                                        <span class="proOgPrice">
                                                            <%# Eval ("PPrice","{0:0,00}") %>
                                                        </span>
                                                        <%# Eval ("PSelPrice","{0:c}") %>
                                                        <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                            off) </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Literal runat="server" Text="<%$Resources:Resource, Buy 50 mobiles and get a gift card %>" /></div>
                </div>
            </div>

            <!---Ara Icerik--->
    <!---Footer COntents Start here---->
    <hr />
    <footer>
            <div class ="container ">
               
                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; <asp:Literal runat="server" Text="<%$Resources:Resource, Back to top %>" /> &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><a href="AdminHome.aspx"> <asp:Literal runat="server" Text="<%$Resources:Resource, Admin Login %>" /></a></p>  
                <p>&copy;2021 Kerazus.in &middot; <a href ="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, Contact %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, Products %>" /></a> </p>
            </div>

        </footer>
    <!---Footer COntents End---->
    </form>
</body>
</html>
