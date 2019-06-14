<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="LearnOnlineSystem.PaymentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>

       <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
     <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet3.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
 <center>
     <h1><asp:Label ID="Label20" runat="server" CssClass="auto-style1" >Payment Details</asp:Label></h1>
            </center>
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [payment]">
            </asp:SqlDataSource>
       
        <br />
         <br />
            
        
           <div class="fresh-table full-color-orange">
           
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" class="table" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="payment_Id" HeaderText="payment_Id" InsertVisible="False" ReadOnly="True" SortExpression="payment_Id" />
                    <asp:BoundField DataField="Parent_ID" HeaderText="Parent_ID" SortExpression="Parent_ID" />
                    <asp:BoundField DataField="Parent_name" HeaderText="Parent_name" SortExpression="Parent_name" />
                    <asp:BoundField DataField="ChildrenQ" HeaderText="ChildrenQ" SortExpression="ChildrenQ" />
                    <asp:BoundField DataField="Total_Amount" HeaderText="Total_Amount" SortExpression="Total_Amount" />
                    <asp:BoundField DataField="payment_date" HeaderText="payment_date" SortExpression="payment_date" />
                    <asp:BoundField DataField="inserted_amount" HeaderText="inserted_amount" SortExpression="inserted_amount" />
                </Columns>
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
             
        </div>
    </form>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>