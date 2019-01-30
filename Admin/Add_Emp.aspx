<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add_Emp.aspx.cs" Inherits="Admin_Add_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="card-header">
                        <strong>Add Faculty</strong> Detail
                      </div>
                      <div class="card-body card-block">
                        <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                             <div class="row form-group">
                        
                                
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Faculty Id</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                             </div>              
                             
                                 <div class="col col-md-3"><label for="text-input" class=" form-control-label">Faculty Name</div>
                               <div class="col-12 col-md-9">
                                 <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                               </div>              
                              
                                 <div class="col col-md-3"><label class=" form-control-label">Department</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="dept_detail" DataTextField="dept_name" DataValueField="dept_name">
                                 <asp:ListItem>---Select ---</asp:ListItem>
                              </asp:DropDownList>
                                  <asp:SqlDataSource ID="dept_detail" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [dept_name] FROM [DEPARTMENT]"></asp:SqlDataSource>
                                 </div>    
                                 
                                 <div class="col col-md-3"><label class=" form-control-label">Branch</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" DataSourceID="branch_detail" DataTextField="branch_name" DataValueField="branch_name">
                                  <asp:ListItem>---Select ---</asp:ListItem>
                                  <asp:ListItem></asp:ListItem>
                              </asp:DropDownList>
                                  <asp:SqlDataSource ID="branch_detail" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [branch_name] FROM [BRANCH]"></asp:SqlDataSource>
                                 </div>                
                             
                              <div class="col col-md-3"><label class=" form-control-label">Password</label></div>
                              <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>       
                            <div class="col col-md-3"><label class=" form-control-label">Mobile No.</label></div>
                              <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                  <label for="text-input" class=" form-control-label">
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="[0-9]{10}" runat="server" ErrorMessage="Please Enter 10 Degit Mobile Number." ControlToValidate="TextBox4" ForeColor="Red"></asp:RegularExpressionValidator>
               
        
    </label>
                                </div>
                                 <div class="col col-md-3"><label class=" form-control-label">Email Id.</label></div>
                              <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Enter The Valied Email Id. " ControlToValidate="TextBox5" ForeColor="Red"></asp:RegularExpressionValidator>
                                  <br />
                                  <asp:Label ID="Label1" runat="server"></asp:Label>

                             </div>
                

                     <asp:Button ID="Button1" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button1_Click"  />
                    <asp:Button ID="Button2" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />

                         
                                 
                        </form>  
                         
                       </div>
                                 
                     
        
   
     </label>
                                 
                     
        
   
</asp:Content>

