<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DoAnNhom.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link href="css.css" rel="stylesheet" />
    <title>Document</title>
</head>
<body>
    <div class="container">
        <header>
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="">Product</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="">Basket</a></li>
                <li><a href="">Login</a></li>
                <li>
                    <form action="">
                        <input type="text" width="50px" placeholder="Tap to search">
                    </form>
                </li>
            </ul>
        </header>
        <div class="content">
            <div class="content-left">
                <ul>
                    <li><a href="">Phone</a></li>
                    <li><a href="">Desktop</a></li>
                    <li><a href="">Item</a></li>
                </ul>
            </div>
            <div class="middle">
                <div class="item">
                  Hello
                </div>
                <div class="login">
                  <div class="box">
                    <h2>Login</h2>
                    <form class="" action="index.html" method="post">
                      <div class="inputbox">
                        <input type="text" name="" value="" required="">
                        <label for="">Username</label>
                      </div>
                      <div class="inputbox">
                        <input type="password" name="" value="" required="">
                        <label for="">Password</label>
                      </div>
                      <input type="submit" name="" value="Đăng Nhập">
                      <div class="regis">
                        <p>Chưa có tài khoản?&nbsp;</p>
                        <a href="regis.html">đăng kí ngay tại đây!</a>
                      </div>
                    </form>
                  </div>
                </div>
            </div>
            <div class="crl"></div>
        </div>
        <footer>

        </footer>
    </div>
</body>
</html>