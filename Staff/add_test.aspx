<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Faculty.master" AutoEventWireup="true" CodeFile="add_test.aspx.cs" Inherits="Staff_add_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Add Test</strong> Detail
                      </div>
                      <div class="card-body card-block">
                        <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                             <div class="row form-group">
                        
                                
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Test Id</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>              
                             
                                 <div class="col col-md-3"><label for="text-input" class=" form-control-label">Test Name</div>
                               <div class="col-12 col-md-9">
                                 <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>              
                                 
                                                
                                
                                 <div class="col col-md-3"><label class=" form-control-label">Semester</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server" DataSourceID="sem" DataTextField="sem_name" DataValueField="sem_name">
                                  <asp:ListItem>---Select ---</asp:ListItem>
                                 
                              </asp:DropDownList>
                                  <asp:SqlDataSource ID="sem" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [sem_name] FROM [SEMESTER]"></asp:SqlDataSource>
                                  <br />
                                 </div> 
                                 <div class="col col-md-3"><label class=" form-control-label">Branch</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" DataSourceID="branch" DataTextField="branch_name" DataValueField="branch_name">
                                  <asp:ListItem>---Select ---</asp:ListItem>
                                  <asp:ListItem></asp:ListItem>
                              </asp:DropDownList>
                                  <asp:SqlDataSource ID="branch" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [branch_name] FROM [BRANCH]"></asp:SqlDataSource>
                                  <br />
                                 </div>    

                              <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Faculty Id</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ></asp:TextBox>  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>              
                            

                                 <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Faculty Name</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>              
                            
                                
                              
                                 
                                
                            
                          </div> 
                

                     <asp:Button ID="Button1" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit"   />
                    <asp:Button ID="Button2" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />

                           
                                 
                        </form>  
                         
                       </div>
                                 
                     
        
        
    </label>
    
    </asp:Content>

