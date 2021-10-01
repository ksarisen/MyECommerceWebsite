<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2><asp:Literal runat="server" Text="<%$Resources:Resource, AddCategory %>" /></h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, CategoryName %>"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Category Name" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddtxtCategory" CssClass ="btn btn-success " runat="server" Text="<%$Resources:Resource, AddCategory %>" OnClick="btnAddtxtCategory_Click"   />
                        
                    </div>
                </div>
                

            </div>

             <h1><asp:Literal runat="server" Text="<%$Resources:Resource, Categories %>" /></h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> <asp:Literal runat="server" Text="<%$Resources:Resource, AllCategories %>" /></div>


     <asp:repeater ID="rptrCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Categories %>" /></th>
                        <th>Edit</th>

                    </tr>

                </thead>
                 <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("CatID") %> </th>
                    <td><%# Eval("CatName") %>   </td>

                    <td>Edit</td>
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



