<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="login_Default" %>



<!DOCTYPE html>


<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="form">
      <img src="logo.png" class="center" />
      <ul class="tab-group">
        <li class="active"><a  href="Default.aspx">Log In</a></li>
        <li ><a href="signup.aspx">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
         <form id="form2" runat="server">  
        <div id="login">   
          <h1>Welcome Back!</h1>
          
           
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
              <asp:TextBox ID="TextBox2" runat="server" TextMode="password"></asp:TextBox>
            <%--<input type="password"required autocomplete="off"/>--%>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
        
          <asp:Button ID="Button1" CssClass="button button-block" runat="server" Text="LOGIN" OnClick="Button1_Click1"   />
         <%-- <button class="button button-block"/>Log In</button>--%>
        <asp:Label ID="Label1" CssClass="req" runat="server" ForeColor="Red"></asp:Label>
        </div>           
     
        </form>
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
