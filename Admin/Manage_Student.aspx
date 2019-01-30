<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_Student.aspx.cs" Inherits="Admin_Manage_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header">
                        <strong>Manage Student</strong> Detail
                      </div>
    <div class="card-body card-block">
    <form action="processing page" method="post" enctype="multipart/form-data"   class="form-horizontal">

    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="stu_enrollment" DataSourceID="student_detail" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="stu_enrollment" HeaderText="STUDENT ENROLLMENT" ReadOnly="True" SortExpression="stu_enrollment" />
            <asp:BoundField DataField="name" HeaderText="STUDENT NAME" SortExpression="name" />
            <asp:BoundField DataField="dept" HeaderText="DEPARTMENT" SortExpression="dept" />
            <asp:BoundField DataField="branch" HeaderText="BRANCH" SortExpression="branch" />
            <asp:BoundField DataField="sem" HeaderText="SEMESTER" SortExpression="sem" />
            <asp:BoundField DataField="mobile" HeaderText="MOBILE NO." SortExpression="mobile" />
            <asp:BoundField DataField="email" HeaderText="EMAIL ID." SortExpression="email" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="student_detail" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcon %>" DeleteCommand="DELETE FROM [STU_DETAILS] WHERE [stu_enrollment] = @original_stu_enrollment AND [name] = @original_name AND [dept] = @original_dept AND [branch] = @original_branch AND [sem] = @original_sem AND [mobile] = @original_mobile AND [email] = @original_email" InsertCommand="INSERT INTO [STU_DETAILS] ([stu_enrollment], [name], [dept], [branch], [sem], [mobile], [email]) VALUES (@stu_enrollment, @name, @dept, @branch, @sem, @mobile, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [stu_enrollment], [name], [dept], [branch], [sem], [mobile], [email] FROM [STU_DETAILS]" UpdateCommand="UPDATE [STU_DETAILS] SET [name] = @name, [dept] = @dept, [branch] = @branch, [sem] = @sem, [mobile] = @mobile, [email] = @email WHERE [stu_enrollment] = @original_stu_enrollment AND [name] = @original_name AND [dept] = @original_dept AND [branch] = @original_branch AND [sem] = @original_sem AND [mobile] = @original_mobile AND [email] = @original_email">
        <DeleteParameters>
            <asp:Parameter Name="original_stu_enrollment" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_dept" Type="String" />
            <asp:Parameter Name="original_branch" Type="String" />
            <asp:Parameter Name="original_sem" Type="String" />
            <asp:Parameter Name="original_mobile" Type="Decimal" />
            <asp:Parameter Name="original_email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stu_enrollment" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="dept" Type="String" />
            <asp:Parameter Name="branch" Type="String" />
            <asp:Parameter Name="sem" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="dept" Type="String" />
            <asp:Parameter Name="branch" Type="String" />
            <asp:Parameter Name="sem" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="original_stu_enrollment" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_dept" Type="String" />
            <asp:Parameter Name="original_branch" Type="String" />
            <asp:Parameter Name="original_sem" Type="String" />
            <asp:Parameter Name="original_mobile" Type="Decimal" />
            <asp:Parameter Name="original_email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        
    </form>
        </div>
</asp:Content>

