<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="LearnOnlineSystem.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Payment </title>

   
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
      <link href="assets/css/bootstrap.css" rel="stylesheet" />
      <link href="assets/css/fresh-bootstrap-table.css" rel="stylesheet" />

<!-- Fonts and icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet9.css">
    
     

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            border-top-left-radius: 0.5rem;
            border-bottom-left-radius: 0.5rem;
            left: 0px;
            top: 0px;
            padding: 4%;
            background:rgba(0,0,0,0.5);
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style6 {
            width: 103px;
            height: 101px;
        }
        .auto-style7 {
            width: 48px;
            height: 33px;
        }
        .auto-style8 {
            width: 93px;
            height: 73px;
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
               <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
              <asp:Label ID="Label13" runat="server" Text=" " ForeColor="Yellow" Font-Bold="True" CssClass="auto-style7"></asp:Label>
                </a>
             </li>
        </ul>
           
        <ul class="nav justify-content-end">
     
             <li class="nav-item">
       <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
             <asp:Label ID="Label19" runat="server" Text=" " ForeColor="White" Font-Bold="False" CssClass="auto-style7"></asp:Label>
           </a>
      </li>
             
             <li class="nav-item">
        <a class="nav-link" href= "Login_page.aspx">Log out </a>
      </li>

        </ul>

               
              
              
     </div>
     </nav>

       <div class="container contact">
	<div class="row">
		<div class="auto-style1">
			<div class="contact-info">
                <img src="https://westdulwichosteopaths.com/wp-content/uploads/2017/05/yonetici-icon-300x300.png" alt="image" class="auto-style6"/>
                <h4 class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Label" CssClass="text-white"></asp:Label></h4>
                <img src="https://ya-webdesign.com/images/group-vector-user.png" alt="image" class="auto-style8"/>
                <h6 class="auto-style2"><strong><asp:Label ID="Label_QChild" runat="server" Text="Label" CssClass="text-white"></asp:Label></strong></h6>
                <img src="https://cdn2.iconfinder.com/data/icons/color-svg-vector-icons-2/512/total_cost-512.png" alt="image" class="auto-style8"/>
                <h6 class="auto-style2"><strong><asp:Label ID="Label2" runat="server" Text="Label" CssClass="text-white"></asp:Label></strong></h6>
			</div>
		</div>
		<div class="col-md-9">
			<div class="contact-form">
                <div class="form-group">
				    <span class="text-white">
				    <label class="control-label col-sm-2" for="email">Date</label></span>
				  <div class="col-sm-10">
                      <asp:Label ID="LabelDate" runat="server" class="form-control"></asp:Label>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname"><span class="text-white">Amount</span></label>
				  <div class="col-sm-10">          
					<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Amount" required></asp:TextBox>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname"><span class="text-white">Currency</span></label>
				  <div class="col-sm-10">          
                      <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required>
                           <asp:ListItem>Select</asp:ListItem>
                           <asp:ListItem>Euro</asp:ListItem>
                           <asp:ListItem>US Dollars</asp:ListItem>
                           <asp:ListItem>Pound</asp:ListItem>
                      </asp:DropDownList>

				  </div>
				</div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
                      <asp:Button ID="Button2" runat="server" class="btn btn-warning" Text="Convert" OnClick="Button2_payment" />
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname"><span class="text-white">Amount</span></label>
				  <div class="col-sm-10">          
					<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Converted Amount" required></asp:TextBox>
				  </div>
				</div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
                      <asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="Confirm >>" OnClick="Button1_payment" />
				  </div>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
				</div>
                
			</div>
		</div>
	</div>
</div>

   
       
    </form>
</body>
</html>
