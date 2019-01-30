<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add_Dept.aspx.cs" Inherits="Admin_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
         <div class="card-header">
                        <strong>Add Department</strong> Detail
                      </div>
                      <div class="card-body card-block">
                        <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                          <div class="row form-group">
                            <div class="col col-md-3"></div>
                            <div class="col-12 col-md-9">
                              <p class="form-control-static">
        <asp:Label ID="Label2" runat="server"></asp:Label></p>
                                </div></div>
                                 
                             <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Department ID</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox   style="text-transform:uppercase;" ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>

                              </div>              
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Department Name </label></div>
                               <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox2"  CssClass="form-control" runat="server"></asp:TextBox></div>              
               
                  </div>

                            <asp:Button ID="Button3" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button3_Click"  />
                            <asp:Button ID="Button4" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />
                                    </form>  
                         
                       </div>
                   
     
                         
         <asp:Label ID="Label3" runat="server"></asp:Label>
                   
     
                         
         <br />
         <br />
         <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="dept_detail" AllowPaging="True" DataKeyNames="dept_id">
             <Columns>
                 <asp:BoundField ItemStyle-Width="10%" DataField="dept_id" HeaderText="DEPARTMENT ID" SortExpression="dept_id" ReadOnly="True" />
                 <asp:BoundField DataField="dept_name" HeaderText="DEPARTMENT NAME" SortExpression="dept_name" />
                 <asp:CommandField ItemStyle-Width="10%" HeaderText="MODIFY" ShowDeleteButton="True" ShowEditButton="True" />
             </Columns>
         </asp:GridView>
                   
     
                         
         <asp:SqlDataSource ID="dept_detail" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [DEPARTMENT] WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))" InsertCommand="INSERT INTO [DEPARTMENT] ([dept_id], [dept_name]) VALUES (@dept_id, @dept_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DEPARTMENT]" UpdateCommand="UPDATE [DEPARTMENT] SET [dept_name] = @dept_name WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_dept_id" Type="String" />
                 <asp:Parameter Name="original_dept_name" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="dept_id" Type="String" />
                 <asp:Parameter Name="dept_name" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="dept_name" Type="String" />
                 <asp:Parameter Name="original_dept_id" Type="String" />
                 <asp:Parameter Name="original_dept_name" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
                   
     
                         
         <br />
    
</asp:Content>

