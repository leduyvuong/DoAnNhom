<%@ Page Title="" Language="C#" MasterPageFile="~/defaut.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="DoAnNhom.giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
       <asp:Button ID="Button3" runat="server" Style="float: right; background: black" Text="Logout" OnClick="Button3_Click" />
        <asp:Label ID="Label2" runat="server" Style="float: right;" Text=""></asp:Label>
    </div>
    
    <div>
    <asp:GridView ID="GridView1" runat="server" Width="930px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MASP" HeaderText="Mã sản phẩm">
            <HeaderStyle BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TENSP" HeaderText="Tên sản phẩm" >
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTA" HeaderText="Mô tả" >
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="GIA" HeaderText="Giá sản phẩm" DataFormatString="{0:0,00} đ " >
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" >
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            
            <asp:CommandField ShowDeleteButton="True" >
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
        <div style="text-align:center;margin-top:20px;" >
    <asp:Label ID="LblThanhTien" runat="server"  Text=""></asp:Label>
    
            <br />
    <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click">Mua</asp:LinkButton>
    </div>
        </div>
</asp:Content>
