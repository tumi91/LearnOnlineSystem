<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPayment.aspx.cs" Inherits="LearnOnlineSystem.ConfirmationPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/fresh-bootstrap-table.css" rel="stylesheet" />

<!-- Fonts and icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet8.css">
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
       
    
       <div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>Learn Online System</strong>
                        <br>
                        5500 Ampang
                        <br>
                        Kaula Lumpur
                        <br>
                        <abbr title="Phone">P:</abbr> (017) 639-5090
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: <asp:Label ID="Label1" runat="server" Text=""></asp:Label></em>
                    </p>
                    <p>
                        <em>Receipt #:<asp:Label ID="Label2" runat="server" Text=""></asp:Label> </em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Parent Name</th>
                            <th>Child Quantity </th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> </em></h4></td>
                            <td class="col-md-1" style="text-align: center"> <asp:Label ID="Label4" runat="server" Text=""></asp:Label> </td>
                            <td class="col-md-1 text-center">95.4</td>
                            <td class="col-md-1 text-center"><asp:Label ID="Label3" runat="server" Text=""></asp:Label> </td>
                        </tr>
                        <tr>
                            <td class="col-md-9"><em></em></h4></td>
                            <td class="col-md-1" style="text-align: center">  </td>
                            <td class="col-md-1 text-center"></td>
                            <td class="col-md-1 text-center"></td>
                        </tr>
                        <tr>
                            <td class="col-md-9"><em></em></h4></td>
                            <td class="col-md-1" style="text-align: center">  </td>
                            <td class="col-md-1 text-center"></td>
                            <td class="col-md-1 text-center"></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Discount: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></strong>
                               
                            </p>
                            <p>
                       <strong> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> </strong>
                               
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>
                                <asp:Label ID="Label7" runat="server" Text=""></asp:Label> </strong></h4></td>
                        </tr>
                    </tbody>
                </table>
               </td>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
