<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewChild.aspx.cs" Inherits="LearnOnlineSystem.ViewChild" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" DeleteCommand="DELETE FROM child FROM child INNER JOIN Pic ON child.child_id = Pic.child_id" SelectCommand="SELECT * FROM [child]" UpdateCommand="UPDATE child SET FROM child INNER JOIN Pic ON child.child_id = Pic.child_id"></asp:SqlDataSource>
    
        <br />
         <br />

        
           <div class="fresh-table full-color-orange">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="child_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" />
                       <asp:BoundField DataField="child_id" HeaderText="child_id" InsertVisible="False" ReadOnly="True" SortExpression="child_id" />
                       <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                       <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                       <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                       <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                       <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                       <asp:BoundField DataField="parentID" HeaderText="parentID" SortExpression="parentID" />
                   </Columns>
                   <EditRowStyle BackColor="#7C6F57" />
                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#E3EAEB" />
                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F8FAFA" />
                   <SortedAscendingHeaderStyle BackColor="#246B61" />
                   <SortedDescendingCellStyle BackColor="#D4DFE1" />
                   <SortedDescendingHeaderStyle BackColor="#15524A" />
               </asp:GridView>
             </div>
             
       
             

    </form>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>

</html>
