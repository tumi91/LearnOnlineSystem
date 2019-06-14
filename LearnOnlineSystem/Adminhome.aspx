<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="LearnOnlineSystem.Adminhome" %>

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
     <h1><asp:Label ID="Label20" runat="server" CssClass="auto-style1" >Parent Details</asp:Label></h1>
            </center>
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" DeleteCommand="DELETE FROM [parent] WHERE [parent_id] = @parent_id" InsertCommand="INSERT INTO [parent] ([name], [surename], [postCode], [Telephone_Number], [email], [username], [password]) VALUES (@name, @surename, @postCode, @Telephone_Number, @email, @username, @password)" SelectCommand="SELECT * FROM [parent]" UpdateCommand="UPDATE [parent] SET [name] = @name, [surename] = @surename, [postCode] = @postCode, [Telephone_Number] = @Telephone_Number, [email] = @email, [username] = @username, [password] = @password WHERE [parent_id] = @parent_id">
                <DeleteParameters>
                    <asp:Parameter Name="parent_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="surename" Type="String" />
                    <asp:Parameter Name="postCode" Type="String" />
                    <asp:Parameter Name="Telephone_Number" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="surename" Type="String" />
                    <asp:Parameter Name="postCode" Type="String" />
                    <asp:Parameter Name="Telephone_Number" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="parent_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
       
        <br />
         <br />
            
        
           <div class="fresh-table full-color-orange">
           
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" class="table" AutoGenerateColumns="False" DataKeyNames="parent_id" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="parent_id" HeaderText="parent_id" InsertVisible="False" ReadOnly="True" SortExpression="parent_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="surename" HeaderText="surename" SortExpression="surename" />
                    <asp:BoundField DataField="postCode" HeaderText="postCode" SortExpression="postCode" />
                    <asp:BoundField DataField="Telephone_Number" HeaderText="Telephone_Number" SortExpression="Telephone_Number" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
