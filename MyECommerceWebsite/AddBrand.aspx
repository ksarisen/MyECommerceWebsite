<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal ">
                <h2><asp:Literal runat="server" Text="<%$Resources:Resource, AddBrand %>" /></h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, BrandName %>"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass ="text-danger " ErrorMessage="*Please Enter Brand name" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">

                        <asp:Button ID="btnAddBrand" CssClass ="btn btn-success " runat="server" Text="<%$Resources:Resource, Add %>" OnClick="btnAddBrand_Click"  />
                        
                    </div>

                </div>

            </div>

        <h1><asp:Literal runat="server" Text="<%$Resources:Resource, Brands %>" /></h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> <asp:Literal runat="server" Text="<%$Resources:Resource,AllBrands %>" /></div>


     <asp:repeater ID="rptrBrands" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Brand %>" /></th>
                        <th>Edit</th>

                    </tr>

                </thead>
                 
                 <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("BrandID") %> </th>
                    <td><%# Eval("Name") %>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

</div>

<hr />
</div>

</asp:Content>