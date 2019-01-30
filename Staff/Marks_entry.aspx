<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Faculty.master" AutoEventWireup="true" CodeFile="Marks_entry.aspx.cs" Inherits="Staff_Marks_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="card-header">
                        <strong>Marks</strong> Detail
                      </div>
             <div class="card-body card-block">
                     
        <form action="processing page" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="row form-group">
                <div class="col col-md-3">
                    <label class=" form-control-label">Faculty Id</label></div>
                <div class="col-12 col-md-9">
                    <asp:Label class=" form-control-label" ID="Label2" runat="server" Font-Bold="True"></asp:Label>
                </div>

                <div class="col col-md-3">
                    <label class=" form-control-label">Faculty Name</label></div>
                <div class="col-12 col-md-9">
                    <asp:Label class=" form-control-label" ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </div>



                <div class="col col-md-3">
                    <label class=" form-control-label">Subject</label></div>
                <div class="col-12 col-md-9">
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" CausesValidation="True" Font-Bold="True" >
                    </asp:DropDownList>
                </div>
           
            <div class="col col-md-3">
                    <label class=" form-control-label">Semester Name</label></div>
                <div class="col-12 col-md-9">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
                
                </div>
            </div>


            <asp:Label ID="Label4" runat="server"></asp:Label>
            
            
            <br />
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AllowPaging="True" ValidateRequestMode="Enabled">
                <Columns >
                    <asp:TemplateField HeaderText="Marks Entry">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
            </asp:GridView>


            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary btn-sm" Text="Submit" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger btn-sm" Text="Reset" />
              </div>
    <asp:Label ID="Label5" runat="server" ></asp:Label>
        </form>
        
         
</asp:Content>

