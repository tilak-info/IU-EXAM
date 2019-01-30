<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add_Subject.aspx.cs" Inherits="Admin_Add_Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Add Subject</strong> Detail
                      </div>
                      <div class="card-body card-block">
                       <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                          <div class="row form-group">
                            <div class="col col-md-3"></div>
                            <div class="col-12 col-md-9">
                              <p class="form-control-static">
                                  &nbsp;</p>
                                </div></div>
                                 
                             <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Department Name</label></div>
                             <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="dept" DataTextField="dept_name" DataValueField="dept_name"></asp:DropDownList>

                                 <asp:SqlDataSource ID="dept" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [dept_name] FROM [DEPARTMENT]"></asp:SqlDataSource>

                              </div>              
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Branch Name</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="branch" DataTextField="branch_name" DataValueField="branch_name"></asp:DropDownList>
                                   <asp:SqlDataSource ID="branch" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [branch_name] FROM [BRANCH]"></asp:SqlDataSource>
                                 </div>              
                                                    
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Semester</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" DataSourceID="sem" DataTextField="sem_name" DataValueField="sem_name"></asp:DropDownList>
                                   <asp:SqlDataSource ID="sem" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [sem_name] FROM [SEMESTER]"></asp:SqlDataSource>
                                   </asp:TextBox></div>  
                      
                                  <div class="col col-md-3"><label for="text-input" class=" form-control-label">Subject Code</label></div>
                               <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox9"  CssClass="form-control" runat="server"></asp:TextBox></div>  
                                 
                                  <div class="col col-md-3"><label for="text-input" class=" form-control-label">Subject Name</label></div>
                               <div class="col-12 col-md-9"> <asp:TextBox ID="TextBox10"  CssClass="form-control" runat="server"></asp:TextBox></div>  
                 </div>
                                              

                     <asp:Button ID="Button1" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button1_Click"  />
                    <asp:Button ID="Button2" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />

                      
                           <br />

                      
                        </form>  
                          <asp:Label ID="Label4" runat="server"></asp:Label>
                          <br />
                          <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="sub_code" DataSourceID="subject">
                              <Columns>
                                  <asp:BoundField DataField="dept_name" HeaderText="DEPERTMENT" SortExpression="dept_name" />
                                  <asp:BoundField DataField="branch_name" HeaderText="BRANCH" SortExpression="branch_name" />
                                  <asp:BoundField DataField="semester" HeaderText="SEMESTER" SortExpression="semester" />
                                  <asp:BoundField DataField="sub_code" HeaderText="SUBJECT CODE" ReadOnly="True" SortExpression="sub_code" />
                                  <asp:BoundField DataField="sub_name" HeaderText="SUBJECT NAME" SortExpression="sub_name" />
                                  <asp:CommandField ItemStyle-Width="10%" HeaderText="MODIFY" ShowDeleteButton="True" ShowEditButton="True" />
                              </Columns>
                          </asp:GridView>
                          <asp:SqlDataSource ID="subject" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [SUBJECT] WHERE [sub_code] = @original_sub_code AND [dept_name] = @original_dept_name AND [branch_name] = @original_branch_name AND [semester] = @original_semester AND [sub_name] = @original_sub_name" InsertCommand="INSERT INTO [SUBJECT] ([dept_name], [branch_name], [semester], [sub_code], [sub_name]) VALUES (@dept_name, @branch_name, @semester, @sub_code, @sub_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SUBJECT]" UpdateCommand="UPDATE [SUBJECT] SET [dept_name] = @dept_name, [branch_name] = @branch_name, [semester] = @semester, [sub_name] = @sub_name WHERE [sub_code] = @original_sub_code AND [dept_name] = @original_dept_name AND [branch_name] = @original_branch_name AND [semester] = @original_semester AND [sub_name] = @original_sub_name">
                              <DeleteParameters>
                                  <asp:Parameter Name="original_sub_code" Type="String" />
                                  <asp:Parameter Name="original_dept_name" Type="String" />
                                  <asp:Parameter Name="original_branch_name" Type="String" />
                                  <asp:Parameter Name="original_semester" Type="String" />
                                  <asp:Parameter Name="original_sub_name" Type="String" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="dept_name" Type="String" />
                                  <asp:Parameter Name="branch_name" Type="String" />
                                  <asp:Parameter Name="semester" Type="String" />
                                  <asp:Parameter Name="sub_code" Type="String" />
                                  <asp:Parameter Name="sub_name" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="dept_name" Type="String" />
                                  <asp:Parameter Name="branch_name" Type="String" />
                                  <asp:Parameter Name="semester" Type="String" />
                                  <asp:Parameter Name="sub_name" Type="String" />
                                  <asp:Parameter Name="original_sub_code" Type="String" />
                                  <asp:Parameter Name="original_dept_name" Type="String" />
                                  <asp:Parameter Name="original_branch_name" Type="String" />
                                  <asp:Parameter Name="original_semester" Type="String" />
                                  <asp:Parameter Name="original_sub_name" Type="String" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                        </div> 
                       
                      
</asp:Content>

