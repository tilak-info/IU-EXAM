<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S_Marks.aspx.cs" Inherits="Student_S_Marks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IU EXAM</title>
    <link rel="stylesheet" href="~/assets/css/normalize.css" />
    <link rel="stylesheet" href="~/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="~/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="~/assets/css/themify-icons.css"/>
    <!--<link rel="stylesheet" href="~/assets/css/flag-icon.min.css"/>-->
    <link rel="stylesheet" href="~/assets/css/cs-skin-elastic.css"/>
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css"/>
    <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet"/>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'/>

</head>
<body>
     <div class="card-body card-block">
    <form id="form1" runat="server">
        <div class="row form-group">
            <div class="col col-md-3">
                    <label class=" form-control-label" ></label></div>
                    <asp:Label ID="Label1"  CssClass=" form-control-label" runat="server" Text="Label" Font-Bold="True" Font-Italic="False" ></asp:Label>   
                
            </div>
        
    <div>
        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server"></asp:GridView>
    </div>
    </form>
         </div>
</body>
</html>
