<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="login_signup" %>

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
      <img src="logo.png" class="center" >
      <ul class="tab-group">
        
        <li ><a href="Default.aspx">Log In</a></li>
        <li class="active"><a href="signup.aspx">Student`S Marks</a></li>
      </ul>
      
      
      <div class="tab-content">
         <form id="form2" runat="server">  
                  
        <div id="signup">   
          <h1>Enter Your Enrollment No.</h1>
          
          
          
          

            <div class="field-wrap">
              <label>
                Enrollment No.<span class="req">*</span>
              </label>
              <asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>
            </div>
        
            <div class="field-wrap">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Enrollment No...." ControlToValidate="TextBox1" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>


          
                    <asp:Button ID="Button2" CssClass="button button-block" runat="server" Text="Get Your Marks" OnClick="Button2_Click"   />
          <%--<button type="submit" class="button button-block"/>Get Started</button>--%>
          
          

        </div>
        </form>
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
