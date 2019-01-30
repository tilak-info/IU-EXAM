<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add_Semester.aspx.cs" Inherits="Admin_Add_Semester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Add Semester</strong> Detail
                      </div>
                      <div class="card-body card-block">
                        <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
                          <div class="row form-group">
                            <div class="col col-md-3"></div>
                            <div class="col-12 col-md-9">
                              <p class="form-control-static">
        <asp:Label ID="Label3" runat="server"></asp:Label></p>
                                </div></div>
                                 
                             <div class="row form-group">
                                 <div class="col col-md-3"><label class=" form-control-label">Year</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"  >
                                  <asp:ListItem>2017</asp:ListItem>
                                  <asp:ListItem>2018</asp:ListItem>
                                  <asp:ListItem>2019</asp:ListItem>
                                  <asp:ListItem>2020</asp:ListItem>
                              </asp:DropDownList>                        
                                 </div> 
                                
                                 <br />
                                
                            <div class="col col-md-3"><label class=" form-control-label">Semester</label></div>
                              <div class="col-12 col-md-9"> <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"   >
                                  <asp:ListItem>SEMESTER 1</asp:ListItem>
                                  <asp:ListItem>SEMESTER 2</asp:ListItem>
                                  <asp:ListItem>SEMESTER 3</asp:ListItem>
                                  <asp:ListItem>SEMESTER 4</asp:ListItem>
                                  <asp:ListItem>SEMESTER 5</asp:ListItem>
                                  <asp:ListItem>SEMESTER 6</asp:ListItem>
                                  <asp:ListItem>SEMESTER 7</asp:ListItem>
                                  <asp:ListItem>SEMESTER 8</asp:ListItem>
                              </asp:DropDownList>
                                 </div>  
                       </div>     
                           
                 <asp:Button ID="Button3" runat="server" Cssclass="btn btn-primary btn-sm" Text="Submit" OnClick="Button3_Click"  />
                            <asp:Button ID="Button4" runat="server" Cssclass="btn btn-danger btn-sm" Text="Reset"  />
                            <br />
                          
                         
                       
                          <asp:Label ID="Label4" runat="server"></asp:Label>
                          <br />
                          <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="sem_name" DataSourceID="sem_detail" AllowPaging="True">
                              <Columns>
                                  <asp:BoundField DataField="sem_name" HeaderText="YEAR / SEMESTER" ReadOnly="True" SortExpression="sem_name" />
                                  <asp:CommandField ItemStyle-Width="10%" HeaderText="MODIFY" ShowDeleteButton="True" />
                              </Columns>
                          </asp:GridView>
                         
                       
                            <asp:SqlDataSource ID="sem_detail" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [SEMESTER] WHERE [sem_name] = @original_sem_name" InsertCommand="INSERT INTO [SEMESTER] ([sem_name]) VALUES (@sem_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SEMESTER]">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_sem_name" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="sem_name" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                         
                       </form>
                      </div>  
         
    
</asp:Content>

