<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add_Branch.aspx.cs" Inherits="Admin_Add_Branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Add Branch</strong> Detail
                      </div>
                      <div class="card-body card-block">
                        <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                          <div class="row form-group">
                            <div class="col col-md-3"></div>
                            <div class="col-12 col-md-9">
                              <p class="form-control-static">
        <asp:Label ID="Label1" runat="server"></asp:Label></p>
                                </div></div>
                                 
                             <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Branch Code</label></div>
                             <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox3"  CssClass="form-control" runat="server"></asp:TextBox>

                              </div>              
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Branch Name</label></div>
                               <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox4"  CssClass="form-control" runat="server"></asp:TextBox></div>              
                                                    
                            
                           </div>
                 <asp:Button ID="Button3" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button3_Click1"  />
                            <asp:Button ID="Button4" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />
                            <br />
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <br />
         <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="branch_detail" AllowPaging="True" DataKeyNames="branch_code">
             <Columns>
                 <asp:BoundField ItemStyle-Width="10%" DataField="branch_code" HeaderText="BRANCH CODE" SortExpression="branch_code" ReadOnly="True" />
                 <asp:BoundField DataField="branch_name" HeaderText="BRANCH NAME" SortExpression="branch_name" />
                 <asp:CommandField ItemStyle-Width="10%" HeaderText="MODIFY" ShowDeleteButton="True" ShowEditButton="True" />
             </Columns>
         </asp:GridView>
                   
     
                         
                            <asp:SqlDataSource ID="branch_detail" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [BRANCH] WHERE [branch_code] = @original_branch_code AND [branch_name] = @original_branch_name" InsertCommand="INSERT INTO [BRANCH] ([branch_code], [branch_name]) VALUES (@branch_code, @branch_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BRANCH]" UpdateCommand="UPDATE [BRANCH] SET [branch_name] = @branch_name WHERE [branch_code] = @original_branch_code AND [branch_name] = @original_branch_name">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_branch_code" Type="String" />
                                    <asp:Parameter Name="original_branch_name" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="branch_code" Type="String" />
                                    <asp:Parameter Name="branch_name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="branch_name" Type="String" />
                                    <asp:Parameter Name="original_branch_code" Type="String" />
                                    <asp:Parameter Name="original_branch_name" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </form>  
                         
                       
                      </div>

    
</asp:Content>

