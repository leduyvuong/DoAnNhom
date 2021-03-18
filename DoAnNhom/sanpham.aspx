<%@ Page Title="" Language="C#" MasterPageFile="~/defaut.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="DoAnNhom.sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="logout" >
        <asp:Button ID="Button3" runat="server" Style="float: right; background: black" Text="Logout" OnClick="Button3_Click" />
        <asp:Label ID="Label2" runat="server" Style="float: right;" Text=""></asp:Label>
    </div>
    <div class="search" style="">

        <asp:TextBox ID="txt123" Style="background: #d0d0d0; width:300px; border:none; outline: none;color:black;padding:5px 20px;border-radius:5px;font-size:18px" runat="server"></asp:TextBox>
        <asp:Button ID="btn123" runat="server" Style="background: black; padding: 6px 20px;position:relative;top:-2px;border-radius:5px" Text="search" OnClick="btn123_Click" />
    </div>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="abc">
                <div class="img" style="height:120px; text-align:center; margin-top: 20px">
                    <asp:Image class="Image1" runat="server"  Width="100px" ImageUrl='<%# Eval("HINH") %>' />
                </div>
                <br />
                <div style=" margin-top:5px">
                <asp:Label class="Label1" runat="server"  Text=' <%#"Sản phẩm: "+ Eval("TENSP")%>'></asp:Label>
                </div>
                    <br />
                <div style="height:50px; color:red; font-weight:bold ; margin-top:2px">
                <asp:Label class="Label1" runat="server"  Text='<%# "Giá: " +Eval("GIA", "{0:0,00}")+"đ" %>'></asp:Label>
                </div>
                    <br />
                <div ></div>
                <asp:Label class="Label1" runat="server" Style="height:70px; width: 100px" Text='<%#"Mô tả: " + Eval("MOTA") %>'></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Style="height:50px;width: 100px" Text="Số lượng"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True" Value="1">1 cái</asp:ListItem>
                    <asp:ListItem Value="2">2 cái</asp:ListItem>
                    <asp:ListItem Value="3">3 cái</asp:ListItem>
                    <asp:ListItem Value="4">4 cái</asp:ListItem>
                </asp:DropDownList>
                <br />

                <div class="btn" style ="text-align:center;margin-top:10px;width:85%">
                    <asp:LinkButton ID="LinkButton1" runat="server">Liên Hệ</asp:LinkButton>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
