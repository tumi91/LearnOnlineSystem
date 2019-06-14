<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChildProfile.aspx.cs" Inherits="LearnOnlineSystem.ChildProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Child Profile</title>
  
    
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

     

<!-- Fonts and icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet6.css">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet10.css">
   
    
   
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
        <li class="nav-item active">
               <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
              <asp:Label ID="lbltime" runat="server" Text=" " ForeColor="White" Font-Bold="True" CssClass="auto-style7"></asp:Label>
                </a>
             </li>
       
        </ul>
        <ul class="nav justify-content-end">
     
             <li class="nav-item">
       <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
             <asp:Label ID="Label19" runat="server" Text=" " ForeColor="White" Font-Bold="false" CssClass="auto-style7"></asp:Label>
           </a>
      </li>
             <li class="nav-item">
        <a class="nav-link" href= "Login_page.aspx">Log out </a>
      </li>

        </ul>
    </div>
</nav>
        
<div class="container">
    <div class="fb-profile">
        
        <img align="left" class="fb-image-lg" src="https://image.freepik.com/fotos-gratis/livro-com-fundo-de-placa-verde_1150-3837.jpg" alt="Profile image example" style="height: 287px" />
        <div class="card">
        <div class="card-body">
              <asp:Image ID="Image1" runat="server" align="left" class="fb-image-profile thumbnail" Height="180" Width="180" />
        <div class="fb-profile-text">
            <h1>
              <asp:Label ID="Child_Name" runat="server" Text="Mohamed "></asp:Label>
            </h1>
            <p>
               <strong>Parent Name:  </strong><asp:Label ID="Parent_Name" runat="server" Text=" "></asp:Label>
            </p>
           </div>
           </div>
        </div>
    </div>
</div> <!-- /container -->  

        <br />
        <br />

      <div class="container">
	<div class="row">
		<div class="container">
	<div class="row">
	    <div class="col-md-4">
    		<div class="card mb">
              <img class="card-img-top" src="https://image.freepik.com/fotos-gratis/globo-na-mesa-do-professor_23-2147885264.jpg" alt="Card image cap">
              <div class="card-body mb">
                <h5 class="card-title">Beginner Test</h5>
                <p class="card-text">Beginner Test is for children who their age between 6 t0 10 years it contains some basic operation.</p>
                  <asp:Button ID="Button1" runat="server" Text="Start Now" class="btn btn-primary mb" OnClick="Button_Test1" />
                
              </div>
            </div>
        </div>
        <div class="col-md-4">
    		<div class="card mb">
              <img class="card-img-top" src="https://image.freepik.com/fotos-gratis/composicao-de-boas-vindas_1134-1.jpg" alt="Card image cap">
              <div class="card-body mb">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               <asp:Button ID="Button2" runat="server" Text="Start Now" class="btn btn-primary mb" OnClick="Button_Test2" />
              </div>
            </div>
        </div>
        <div class="col-md-4">
    		<div class="card mb">
              <img class="card-img-top" src="https://image.freepik.com/fotos-gratis/conceito-de-educacao-estudante-estudando-e-brainstorming-conceito-de-campus-perto-de-estudantes-discutindo-seu-assunto-em-livros-ou-livros-didaticos-foco-seletivo_1418-626.jpg" alt="Card image cap">
              <div class="card-body mb">
                <h5 class="card-title">Advanced Test</h5>
                <p class="card-text">Advanced Test is for children who their age between 12 to 16 years it contains more Advanced operation .</p>
                <asp:Button ID="Button3" runat="server" Text="Start Now" class="btn btn-primary mb" OnClick="Button_Test3" />
              </div>
            </div>
        </div>
	</div>
</div>
      </div>
      </div> 

        <br />
        <br />

          
    </form>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>



