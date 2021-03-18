<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGKY.aspx.cs" Inherits="DoAnNhom.DANGKY" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link href="DangKycss.css" rel="stylesheet" />
    <title></title>
  </head>
  <body>
    <div class="box">
      <h2>Login</h2>
      <form class="" runat="server">
        <div class="inputbox">
          <input type="text" name="TENKH" value="" required="">
          <label for="">Full Name</label>
        </div>
        <div class="inputbox">
          <input type="text" name="TENDN" value="" required="">
          <label for="">Username</label>
        </div>
        <div class="inputbox">
          <input type="password" name="pass" value="" required="">
          <label for="">Password</label>
        </div>
        <div class="inputbox">
          <input type="password" name="cPass" value="" required="">
          <label for="">Confirm Password</label>
        </div>

          <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" />
          <br />
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      </form>
    </div>
  </body>
</html>
