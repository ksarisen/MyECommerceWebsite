<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>

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
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="UserHome.aspx" ><span ><img src="icons/safeIcons.png" alt="MyEShoppoing" height ="30" /></span>MyEShopping </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="UserHome.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a> </li>
                         <li ><a href ="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a> </li>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown"><asp:Literal runat="server" Text="<%$Resources:Resource, Products %>" /><b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li> <a href ="Products.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, AllProducts %>" /></a></li>
                                <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header "><asp:Literal runat="server" Text="<%$Resources:Resource, Men %>" /></li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="ManTop.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Top %>" /></a></li>
                                <li> <a href="ManPants.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Pants %>" /></a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header "><asp:Literal runat="server" Text="<%$Resources:Resource, Women %>" /></li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="WomanTop.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Top %>" /></a></li>
                                <li> <a href ="WomanLegging.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Leggings %>" /></a></li>
                            </ul>

                        </li>
                        <li >

                            <asp:Button ID="btnLogin" CssClass ="btn btn-default navbar-btn " runat="server" Text="<%$Resources:Resource, Login %>" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnlogout" CssClass ="btn btn-default navbar-btn " runat="server" Text="<%$Resources:Resource, Logout %>" OnClick="btnlogout_Click" />
                            <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="English" Value="en-us" />
                                <asp:ListItem Text="Turkish" Value="tr" />
                            </asp:DropDownList>
                        </li>
                        <li>
                        <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn " runat="server" Text=""  />
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <asp:Label ID="lblSuccess" runat="server" CssClass ="text-success "></asp:Label>

         <!---Footer Contents Start here--->
        <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, Back to top %>" /></a></p>
                <p>&copy;2021 Kerazus.in &middot; <a href ="Default.aspx"><asp:Literal runat="server" Text="<%$Resources:Resource, Home %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, About %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, ContactUs %>" /></a>&middot;<a href ="#"><asp:Literal runat="server" Text="<%$Resources:Resource, Products %>" /></a> </p>
            </div>

        </footer>

         <!---Footer Contents End--->
    </form>
</body>
</html>
