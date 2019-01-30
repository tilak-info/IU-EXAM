<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_Faculty.aspx.cs" Inherits="Admin_Manage_Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Manage Faculty</strong> Detail
                      </div>
    <div class="card-body card-block">
    <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">
  
    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="f_id" DataSourceID="faculty_detail" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="f_id" HeaderText="FACULTY ID." ReadOnly="True" SortExpression="f_id" />
            <asp:BoundField DataField="name" HeaderText="FACULTY NAME" SortExpression="name" />
            <asp:BoundField DataField="dept" HeaderText="DEPARTMENT" SortExpression="dept" />
            <asp:BoundField DataField="branch" HeaderText="BRANCH" SortExpression="branch" />
            <asp:BoundField DataField="mobile" HeaderText="MOBILE NO." SortExpression="mobile" />
            <asp:BoundField DataField="email" HeaderText="EMAIL ID." SortExpression="email" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="MODIFY" ShowEditButton="True" />
        </Columns>
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="faculty_detail" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [FACULTY_DETAILS]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [FACULTY_DETAILS] WHERE [f_id] = @original_f_id AND [name] = @original_name AND [dept] = @original_dept AND [branch] = @original_branch AND [password] = @original_password AND [mobile] = @original_mobile AND [email] = @original_email" InsertCommand="INSERT INTO [FACULTY_DETAILS] ([f_id], [name], [dept], [branch], [password], [mobile], [email]) VALUES (@f_id, @name, @dept, @branch, @password, @mobile, @email)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [FACULTY_DETAILS] SET [name] = @name, [dept] = @dept, [branch] = @branch, [password] = @password, [mobile] = @mobile, [email] = @email WHERE [f_id] = @original_f_id AND [name] = @original_name AND [dept] = @original_dept AND [branch] = @original_branch AND [password] = @original_password AND [mobile] = @original_mobile AND [email] = @original_email">
        <DeleteParameters>
            <asp:Parameter Name="original_f_id" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_dept" Type="String" />
            <asp:Parameter Name="original_branch" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_mobile" Type="Decimal" />
            <asp:Parameter Name="original_email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="f_id" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="dept" Type="String" />
            <asp:Parameter Name="branch" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="dept" Type="String" />
            <asp:Parameter Name="branch" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="original_f_id" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_dept" Type="String" />
            <asp:Parameter Name="original_branch" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_mobile" Type="Decimal" />
            <asp:Parameter Name="original_email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</form>
</div>
</asp:Content>

