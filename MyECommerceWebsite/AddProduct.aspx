<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2><asp:Literal runat="server" Text="<%$Resources:Resource, AddProduct %>" /></h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, ProductName %>" ></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtProductName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Price %>" ></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, SellingPrice %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label4" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Brand %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
               </div>
           </div>
           
           <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Category %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlCategory" CssClass ="form-control" AutoPostBack ="true"  runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, SubCategory %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlSubCategory" CssClass ="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"></asp:DropDownList>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label19" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Gender %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlGender" CssClass ="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label7" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, SellingPrice %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBoxList ID="cblSize" CssClass ="form-control"  RepeatDirection="Horizontal"  runat="server"></asp:CheckBoxList>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Description %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtDescription" TextMode ="MultiLine" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label9" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, ProductDetails %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtPDetail" TextMode ="MultiLine" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label10" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, MaterialsAndCare %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtMatCare" TextMode ="MultiLine" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, UploadImage %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg01" CssClass ="form-control" runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label12" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, UploadImage %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg02" CssClass ="form-control" runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label13" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, UploadImage %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg03" CssClass ="form-control" runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label14" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, UploadImage %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg04" CssClass ="form-control" runat="server" />
               </div>
           </div>



            <div class ="form-group">
               <asp:Label ID="Label15" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, UploadImage %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg05" CssClass ="form-control" runat="server" />
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label16" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, FreeDelivery %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="chFD" runat="server" />
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label17" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, 30daysreturn %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="ch30Ret" runat="server" />
               </div>
           </div>       

           <div class ="form-group">
               <asp:Label ID="Label20" runat="server" CssClass ="col-md-2 control-label" Text="<%$Resources:Resource, Quantity %>"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtQuantity" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>           

           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="<%$Resources:Resource, AddProduct %>" OnClick="btnAdd_Click"  />
                        
                    </div>
                </div>

       </div>

    </div>

    <div class="container">
   
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2><asp:Literal runat="server" Text="<%$Resources:Resource, ProductReport %>" /></h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                    <Columns>  
                        <asp:BoundField DataField="PID" HeaderText="S.No." />  
                        <asp:BoundField DataField="PName" HeaderText="<%$Resources:Resource, Pname %>" />  
                        <asp:BoundField DataField="PPrice" HeaderText="<%$Resources:Resource, Price %>" />  
                        <asp:BoundField DataField="PSelPrice" HeaderText="<%$Resources:Resource, SellingPrice %>" />  
                        <asp:BoundField DataField="Brand" HeaderText="<%$Resources:Resource, Brand %>" />  
                        <asp:BoundField DataField="CatName" HeaderText="<%$Resources:Resource, Category %>" />  
                        <asp:BoundField DataField="SubCatName" HeaderText="<%$Resources:Resource, SubCategory %>" />

                        <asp:BoundField DataField="gender" HeaderText="<%$Resources:Resource, Gender %>" />  
                        <asp:BoundField DataField="SizeName" HeaderText="<%$Resources:Resource, SizeName %>" />  
                        <asp:BoundField DataField="Quantity" HeaderText="<%$Resources:Resource, Quantity %>" />
                        
                        <asp:TemplateField HeaderText="Photo">  
                    <ItemTemplate>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                        
                         </Columns> 
                    </asp:GridView>
                </div>
              
              </div>
           
           </div>
      
      
      </div>
      <div class="panel-footer">Panel Footer</div>
    </div>
    
</div>
</asp:Content>
