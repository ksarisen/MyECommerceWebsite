<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2><asp:Literal runat="server" Text="<%$Resources:Resource, AddSize %>" /></h2>
                <hr />

                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, SizeName %>" ></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, Brand %>"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Main CategoryID" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, Category %>" ></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlCategory" CssClass ="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter  Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                

                 <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, SubCategory %>" ></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlSubCategory" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Sub Category" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label6" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, Gender %>"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlGender" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSize" CssClass ="btn btn-success " runat="server" Text="<%$Resources:Resource, AddSize %>" OnClick="btnAddSize_Click"    />
                        
                    </div>
                </div>
                

            </div>

<h1><asp:Literal runat="server" Text="<%$Resources:Resource, Size %>" /></h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> <asp:Literal runat="server" Text="<%$Resources:Resource, AllSizes %>" /></div>


     <asp:repeater ID="rptrSize" runat="server">

         <HeaderTemplate>
             <table class="table table-hover">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Size %>" /></th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Brand %>" /></th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Category %>" /></th>
                         <th><asp:Literal runat="server" Text="<%$Resources:Resource, SubCategory %>" /></th>
                         <th><asp:Literal runat="server" Text="<%$Resources:Resource, Gender %>" /></th>
                        

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SizeID") %> </th>
                    <td><%# Eval("SizeName") %>   </td>
                  <td><%# Eval("Name") %>   </td>
                  <td><%# Eval("CatName") %>   </td>
                   <td><%# Eval("SubCatName") %>   </td>
                   <td><%# Eval("GenderName") %>   </td>
                    
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
            

   
</div>


        </div>
</asp:Content>



