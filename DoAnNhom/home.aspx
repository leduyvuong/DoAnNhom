<%@ Page Title="" Language="C#" MasterPageFile="~/defaut.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DoAnNhom.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="item">
                 <div class="about">
                    <h2>This Website design by PhanLongHyper</h2>
                    <p>With the participation of : </p>
                    <p>Copyist : <a target="_blank" href="https://www.facebook.com/vuong.leduy/">Lê Duy Vương</a> <span>(Leader)</span> </p>
                     <p>Database Creator: <a target="_blank" href="https://www.facebook.com/trailv18">Lê Văn Trãi</a></p>
                    <p>Front-End Developer : <a target="_blank" href="https://www.facebook.com/JutLyNee/">Võ Cao Kỳ</a></p>
                     <iframe width="560" height="315" src="https://www.youtube.com/embed/zz5M6l25zmU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                  </div>
                </div>

                <div class="login">
                  <div class="box">
                    <h2>Login</h2>
                    <form >
                      <div class="inputbox">
                        <input type="text" name="user" value="">
                        <label for="">Username</label>
                      </div>
                      <div class="inputbox">
                        <input type="password" name="pass" value="" required="">
                        <label for="">Password</label>
                      </div >
                        <div class="btn">
                        <asp:Button ID="Button1" runat="server"  Text="Login" onclick="Button1_Click"/>
                      </div>
                            <div class="regis">
                        <p>Chưa có tài khoản?&nbsp;</p>
                        <a href="DANGKY.aspx">đăng kí ngay tại đây!</a>
                      </div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </form>
                  </div>
                </div>
            </div>
            <div class="crl"></div>
        </div>
                </div>
</asp:Content>
