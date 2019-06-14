<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddParent.aspx.cs" Inherits="LearnOnlineSystem.AdminAddParent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Registration
</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet2.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            width: 217px;
        }
        .auto-style5 {
            height: 26px;
            width: 217px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Learn Online System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     
        <li class="nav-item active">
               <a class="nav-link" href= "AdminAddParent.aspx"> Add User </a>
                
             </li>
        <li class="nav-item active">
                <a class="nav-link" href= "ViewChild.aspx"> Child Details </a>
             </li>
        <li class="nav-item active">
                <a class="nav-link" href= "Adminhome.aspx"> Parent Details </a>
             </li>
        <li class="nav-item active">
                <a class="nav-link" href= "PaymentDetails.aspx"> Payment Details </a>
             </li>
        </ul>
        <ul class="nav justify-content-end">
     
             <li class="nav-item">
       <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
             <asp:Label ID="Label19" runat="server" Text=" " ForeColor="Yellow" Font-Bold="True" CssClass="auto-style7"></asp:Label>
           </a>
      </li>
             <li class="nav-item">
        <a class="nav-link" href= "Login_page.aspx">Log out </a>
      </li>

        </ul>
    </div>
</nav>
            
            <br />
            <br />
            <br />


           
            
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Add Parent</label>
		<input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Add Child</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>	
				</div>
                <div class="group">
					<label for="user" class="label">Surname</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox>	
				</div>
                <div class="group">
					<label for="user" class="label">Post Code</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="input"></asp:TextBox>	
				</div>
                <div class="group">
					<label for="user" class="label">Telephone Number</label>
                    <asp:TextBox ID="TextBox4" runat="server" class="input"></asp:TextBox>	
				</div>
                <div class="group">
					<label for="user" class="label">Email</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="input"></asp:TextBox>	
				</div> 
                <div class="group">
					<label for="user" class="label">Username</label>
                    <asp:TextBox ID="TextBox6" runat="server" class="input"></asp:TextBox>	
				</div> 
                
				<div class="group">
					<label for="pass" class="label">Password</label>
					<asp:TextBox ID="TextBox7" runat="server" class="input" TextMode="Password"></asp:TextBox>
				</div>
				<div class="group">
					<asp:Button ID="Button1"  runat="server" class="button"  OnClick="Button1_Click" Text="Sign in" />
				</div>
				<div class="hr"></div>
			</div>
			<div class="for-pwd-htm">
				<div class="group">
					<label for="user" class="label">First Name</label>
				<asp:TextBox ID="TextBox8" runat="server" class="input"></asp:TextBox>
				</div>
                <div class="group">
					<label for="user" class="label">DOB</label>
				<asp:TextBox ID="TextBox9" runat="server" class="input"></asp:TextBox>
				</div>
                <div class="group">
					<label for="user" class="label">Gender</label>
				<asp:TextBox ID="TextBox10" runat="server" class="input"></asp:TextBox>
				</div>
                <div class="group">
					<label for="user" class="label">Username</label>
				<asp:TextBox ID="TextBox11" runat="server" class="input"></asp:TextBox>
				</div>
                 
				<div class="group">
					<label for="pass" class="label">Password</label>
					<asp:TextBox ID="TextBox12" runat="server" class="input" TextMode="Password"></asp:TextBox>
				</div>
                <div class="group">
					<label for="user" class="label">Parent ID </label>
                    <asp:TextBox ID="TextBox13" runat="server" class="input"></asp:TextBox>	
				</div> 
				<div class="group">
					<asp:Button ID="Button2" runat="server"  class="button"  OnClick="Button2_Click" Text="Sign in" />
				</div>
				<div class="hr"></div>
			</div>
		</div>
	</div>
</div>

   </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>
