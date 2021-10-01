<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2><asp:Literal runat="server" Text="<%$Resources:Resource, AddGender %>" /></h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="<%$Resources:Resource, Gender %>"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddBrand" CssClass ="btn btn-success " runat="server" Text="<%$Resources:Resource, Add %>" OnClick="btnAddBrand_Click"  />
                        
                    </div>
                </div>

            </div>
         <h1>Gender</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Gender</div>


     <asp:repeater ID="rptrGender" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th><asp:Literal runat="server" Text="<%$Resources:Resource, Gender %>" /></th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("GenderID") %> </th>
                    <td><%# Eval("GenderName") %>   </td>

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


