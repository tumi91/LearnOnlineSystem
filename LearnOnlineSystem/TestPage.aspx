<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="LearnOnlineSystem.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="css/StyleSheet5.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            width: 144px;
        }
        .auto-style5 {
            width: 157px;
        }
        .auto-style6 {
            width: 182px;
        }
        .auto-style7 {
            color: #FFFF00;
        }
        .auto-style8 {
            width: 370px;
        }
        .auto-style10 {
            color: #009933;
        }
        .auto-style11 {
            color: #00CC00;
        }
        .auto-style12 {
            color: #33CC33;
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
              <asp:Label ID="Label5" runat="server" Text="Your Total Points is " ForeColor="Yellow" Font-Bold="True" CssClass="auto-style7"></asp:Label>
           </a>
          </li>
     <li class="nav-item active">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
          <asp:Label ID="lblUsername" runat="server" Text="0" ForeColor="Yellow" Font-Bold="True" CssClass="auto-style7"></asp:Label>
              </a>
          </li>
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
        <li class="nav-item active">
               <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
              <asp:Label ID="lbldate" runat="server" Text=" " ForeColor="White" Font-Bold="True" CssClass="auto-style7"></asp:Label>
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
        <a class="nav-link" href= "ChildProfile.aspx"> Profile </a>
      </li>

             <li class="nav-item">
        <a class="nav-link" href= "Login_page.aspx">Log out </a>
      </li>

        </ul>
    </div>
</nav>

           
            <br />
            <br />
       
            <div class="card text-white bg-dark mb-3" style="max-width: 40rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
<table class="auto-style1">

            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lbl1" runat="server" Text="3"></asp:Label>
                
                    </strong>
                
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lbl2" runat="server" Text="2"></asp:Label>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label40" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Please Select</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                         <asp:ListItem>13</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="result1" runat="server" Text="0" CssClass="auto-style11"></asp:Label>
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lbl3" runat="server" Text="7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="lbl4" runat="server" Text="7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label41" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>Please Select</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="result2" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lbl5" runat="server" Text="3"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="lbl6" runat="server" Text="6"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label42" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem>Please Select</asp:ListItem>
                         <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="result3" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lbl7" runat="server" Text="10"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label14" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="lbl8" runat="server" Text="1"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label43" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                         <asp:ListItem>Please Select</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                         <asp:ListItem>11</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="result4" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="lbl9" runat="server" Text="4"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label28" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="lbl10" runat="server" Text="3"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label44" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                         <asp:ListItem>Please Select</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="result5" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
               <td class="auto-style5">
                    <br />
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary"   OnClick="Button1_Click"  Text="Check Result" />
               </td>
               <td></td>
               <td></td>

                <td class="auto-style6" ></td>
                  
               
                <td class="auto-style8">
                    &nbsp;</td>
                  
               
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="Label45" runat="server" Text="Total Point "></asp:Label>
&nbsp;<asp:Label ID="total1" runat="server" Text="0" CssClass="auto-style10" style="color: #33CC33 !important"></asp:Label>
                    </strong>
                </td>
            </tr>

        </table>
  </div>
</div>

             <br />
           

            <div class="card text-white bg-dark mb-3" style="max-width: 40rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
<table class="auto-style1">

            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="3"></asp:Label>
                
                    </strong>
                
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="2"></asp:Label>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Width="107px"></asp:TextBox>
                </td>

                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="txt6" runat="server" Text="0" CssClass="auto-style11"></asp:Label>
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label11" runat="server" Text="7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label12" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="txt7" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label15" runat="server" Text="3"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label16" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label17" runat="server" Text="6"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label18" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="txt8" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label20" runat="server" Text="10"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label21" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label22" runat="server" Text="1"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label23" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="txt9" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label25" runat="server" Text="4"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label26" runat="server" Text="+" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label27" runat="server" Text="3"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label29" runat="server" Text="=" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="txt10" runat="server" Text="0" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
               <td class="auto-style5">
                    <br />
                    <asp:Button ID="Button2" runat="server" class="btn btn-primary"   OnClick="Button2_Click"  Text="Check Result" />
               </td>
               <td></td>
               <td></td>

                <td class="auto-style6" ></td>
                  
               
                <td class="auto-style8">
                    &nbsp;</td>
                  
               
                <td class="auto-style8">
                    <strong>
                    <asp:Label ID="label67" runat="server" Text="Total Point "></asp:Label>
&nbsp;<asp:Label ID="total2" runat="server" Text="0" CssClass="auto-style10" style="color: #33CC33 !important"></asp:Label>
                    </strong>
                </td>
            </tr>

        </table>
  </div>
</div>
    </form>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>
