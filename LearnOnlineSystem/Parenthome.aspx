<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parenthome.aspx.cs" Inherits="LearnOnlineSystem.Parenthome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cild Details</title>
     
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/fresh-bootstrap-table.css" rel="stylesheet" />

<!-- Fonts and icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="css/StyleSheet1.css">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #000000;
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
         <li class="nav-item">
           <a class="nav-link" href= "Payment.aspx">payment</a>
      </li>
        <li class="nav-item">
           <a class="nav-link" href= "EditChildProfile.aspx">Edit Child Profile</a>
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
        <br />
        <br />



        
       <center><asp:Label ID="Label20" runat="server" CssClass="auto-style1" ></asp:Label></center>
       
        <br />
         <br />
            
        
           <div class="fresh-table full-color-orange">
           
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" class="table">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
             </div>
             
       
             

    </form>
</body>
</html>
