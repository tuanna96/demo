﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>. 
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from 
                ASP.NET. If you have any questions about ASP.NET visit 
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ma_khach_hang" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="ma_khach_hang" HeaderText="ma_khach_hang" ReadOnly="True" SortExpression="ma_khach_hang"></asp:BoundField>
            <asp:BoundField DataField="ho_ten" HeaderText="ho_ten" SortExpression="ho_ten"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt"></asp:BoundField>
            <asp:BoundField DataField="dia_chi" HeaderText="dia_chi" SortExpression="dia_chi"></asp:BoundField>
            <asp:BoundField DataField="ngay_sinh" HeaderText="ngay_sinh" SortExpression="ngay_sinh"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:QuanLyBanHangConnectionString %>' DeleteCommand="DELETE FROM [khach_hang] WHERE [ma_khach_hang] = @ma_khach_hang" InsertCommand="INSERT INTO [khach_hang] ([ma_khach_hang], [ho_ten], [email], [sdt], [dia_chi], [ngay_sinh]) VALUES (@ma_khach_hang, @ho_ten, @email, @sdt, @dia_chi, @ngay_sinh)" SelectCommand="SELECT [ma_khach_hang], [ho_ten], [email], [sdt], [dia_chi], [ngay_sinh] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ho_ten] = @ho_ten, [email] = @email, [sdt] = @sdt, [dia_chi] = @dia_chi, [ngay_sinh] = @ngay_sinh WHERE [ma_khach_hang] = @ma_khach_hang">
        <DeleteParameters>
            <asp:Parameter Name="ma_khach_hang" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ma_khach_hang" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ho_ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="sdt" Type="String"></asp:Parameter>
            <asp:Parameter Name="dia_chi" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ngay_sinh"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ho_ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="sdt" Type="String"></asp:Parameter>
            <asp:Parameter Name="dia_chi" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="ngay_sinh"></asp:Parameter>
            <asp:Parameter Name="ma_khach_hang" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="stt" DataSourceID="SqlDataSource2" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="stt" HeaderText="stt" ReadOnly="True" InsertVisible="False" SortExpression="stt"></asp:BoundField>
            <asp:BoundField DataField="ho_ten" HeaderText="ho_ten" SortExpression="ho_ten"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="noi_dung" HeaderText="noi_dung" SortExpression="noi_dung"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.1024748094555!2d105.79633531449969!3d20.988528994527414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc75cba9f03%3A0x2fc6abeb78ab3276!2zOCBMxrDGoW5nIFRo4bq_IFZpbmgsIFbEg24gUXXDoW4sIFRoYW5oIFh1w6JuLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1471958880065" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:QuanLyBanHangConnectionString2 %>' DeleteCommand="DELETE FROM [lien_he] WHERE [stt] = @stt" InsertCommand="INSERT INTO [lien_he] ([ho_ten], [email], [noi_dung]) VALUES (@ho_ten, @email, @noi_dung)" SelectCommand="SELECT [stt], [ho_ten], [email], [noi_dung] FROM [lien_he]" UpdateCommand="UPDATE [lien_he] SET [ho_ten] = @ho_ten, [email] = @email, [noi_dung] = @noi_dung WHERE [stt] = @stt">
        <DeleteParameters>
            <asp:Parameter Name="stt" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ho_ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="noi_dung" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ho_ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="noi_dung" Type="String"></asp:Parameter>
            <asp:Parameter Name="stt" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div style="background-color:#4cff00">
    <form>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">content:</label>
    <input type="textarea" class="form-control" id="pwd">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
        </div>
</asp:Content>