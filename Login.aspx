<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CorexPage.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
            <div class="intro-header play-page">
  <div class="intro-content cc-homepage play-page">
    <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
      <div class="heading-jumbo-medium">Login</div>
      <div class="heading-jumbo"><%: System.Configuration.ConfigurationManager.AppSettings["ServerName"] %></div>
    </div>
  </div>
</div>
<div class="section cc-store-home-wrap">
  <div class="container main-block">
    
    <center>
     
      <br>
      <div class="col-4">
        <asp:TextBox ID="username" runat="server" class="form-control" type="text" name="username" placeholder="Username" required=""></asp:TextBox>
      </div>

 <br>
<div class="col-4">
        <asp:TextBox ID="password" runat="server" class="form-control" type="password" name="password" placeholder="Password" required=""></asp:TextBox>
      </div>
        <br />
    <asp:Button ID="LogonBtn" runat="server" Text="Login" CssClass="button-play smaller-button w-inline-block" OnClick="LogonBtn_Click"/>

<div class="form-group login-help-block">

<asp:Label ID="Label1" runat="server" Text="Label" CssClass="pull-right" Visible="false"></asp:Label>
	</div>
  <span id="_result"></span>
  </center>
      
    </div>
</div>
    </main>
</asp:Content>
