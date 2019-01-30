<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="subject_assign.aspx.cs" Inherits="Admin_subject_assign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="card-header">
                        <strong>Subject Assign</strong> Detail
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
                            <div class="col col-md-3"><label class=" form-control-label" for="text-input" class=" form-control-label">Faculty Id</label></div>
                             <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="faculty" DataTextField="f_id" DataValueField="f_id"></asp:DropDownList>

                                 <asp:SqlDataSource ID="faculty" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [f_id] FROM [FACULTY_DETAILS]"></asp:SqlDataSource>

                              </div>              
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Faculty Name</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="faculty_name" DataTextField="name" DataValueField="name"></asp:DropDownList>
                                   <asp:SqlDataSource ID="faculty_name" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [name] FROM [FACULTY_DETAILS]"></asp:SqlDataSource>
                                 </div>              
                                                    
                             <div class="col col-md-3"><label for="text-input" class=" form-control-label">Subject Name</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" DataSourceID="subject_name" DataTextField="sub_name" DataValueField="sub_name"></asp:DropDownList>
                                   <asp:SqlDataSource ID="subject_name" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [sub_name] FROM [SUBJECT]"></asp:SqlDataSource>
                                   </div>  
                      
                                  <div class="col col-md-3"><label for="text-input" class=" form-control-label">Subject Code</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" DataSourceID="subject_code" DataTextField="sub_code" DataValueField="sub_code"></asp:DropDownList>
                                   <asp:SqlDataSource ID="subject_code" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [sub_code] FROM [SUBJECT]"></asp:SqlDataSource>
                                   </div>
                                 
                                  <div class="col col-md-3"><label for="text-input" class=" form-control-label">Semester</label></div>
                               <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server" DataSourceID="semester" DataTextField="sem_name" DataValueField="sem_name"></asp:DropDownList>
                                   <asp:SqlDataSource ID="semester" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [sem_name] FROM [SEMESTER]"></asp:SqlDataSource>
                                   </div>
                 </div>
                                              

                     <asp:Button ID="Button1" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />

                      
                           <br />

                      
                        </form>  
                          <asp:Label ID="Label4" runat="server"></asp:Label>
                          <br />
                          <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="subject_name" DataSourceID="subject_assign">
                              <Columns>
                                  <asp:BoundField DataField="f_id" HeaderText="Faculty Id" SortExpression="f_id" />
                                  <asp:BoundField DataField="f_name" HeaderText="Faculty Name" SortExpression="f_name" />
                                  <asp:BoundField DataField="subject_name" HeaderText="Subject Name" ReadOnly="True" SortExpression="subject_name" />
                                  <asp:BoundField DataField="subject_code" HeaderText="Subject Code" SortExpression="subject_code" />
                                  <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="Semester" />
                                  <asp:CommandField ShowDeleteButton="True"  HeaderText="Modify" ShowEditButton="True" />
                              </Columns>
                          </asp:GridView>
                          <asp:SqlDataSource ID="subject_assign" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [SUB_ASSIGN] WHERE [subject_name] = @original_subject_name AND [f_id] = @original_f_id AND [f_name] = @original_f_name AND [subject_code] = @original_subject_code AND [sem] = @original_sem" InsertCommand="INSERT INTO [SUB_ASSIGN] ([f_id], [f_name], [subject_name], [subject_code], [sem]) VALUES (@f_id, @f_name, @subject_name, @subject_code, @sem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SUB_ASSIGN]" UpdateCommand="UPDATE [SUB_ASSIGN] SET [f_id] = @f_id, [f_name] = @f_name, [subject_code] = @subject_code, [sem] = @sem WHERE [subject_name] = @original_subject_name AND [f_id] = @original_f_id AND [f_name] = @original_f_name AND [subject_code] = @original_subject_code AND [sem] = @original_sem">
                              <DeleteParameters>
                                  <asp:Parameter Name="original_subject_name" Type="String" />
                                  <asp:Parameter Name="original_f_id" Type="String" />
                                  <asp:Parameter Name="original_f_name" Type="String" />
                                  <asp:Parameter Name="original_subject_code" Type="String" />
                                  <asp:Parameter Name="original_sem" Type="String" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="f_id" Type="String" />
                                  <asp:Parameter Name="f_name" Type="String" />
                                  <asp:Parameter Name="subject_name" Type="String" />
                                  <asp:Parameter Name="subject_code" Type="String" />
                                  <asp:Parameter Name="sem" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="f_id" Type="String" />
                                  <asp:Parameter Name="f_name" Type="String" />
                                  <asp:Parameter Name="subject_code" Type="String" />
                                  <asp:Parameter Name="sem" Type="String" />
                                  <asp:Parameter Name="original_subject_name" Type="String" />
                                  <asp:Parameter Name="original_f_id" Type="String" />
                                  <asp:Parameter Name="original_f_name" Type="String" />
                                  <asp:Parameter Name="original_subject_code" Type="String" />
                                  <asp:Parameter Name="original_sem" Type="String" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                        </div> 
                       
</asp:Content>

