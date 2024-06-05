<%@ Page Title="UserCP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserCP.aspx.cs" Inherits="CorexPage.UserCP" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
       <div class="intro-header play-page">
    <div class="intro-content cc-homepage play-page">
      <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
        <div class="heading-jumbo-medium">My Account</div>
        <div class="heading-jumbo"><%: CorexPage.SiteMaster.ServerName %></div>
      </div>
    </div>
  </div>
  
  <div class="section cc-store-home-wrap">
    <div class="container main-block">
	
	<div class="w-row">
	
	<div class="column w-col w-col-12">
          <h1 class="sidebar-heading">CHANGE PASSWORD</h1>
          <div>
            <center>
       
        <br>
        <div class="col-4">
            <asp:TextBox ID="password" runat="server" class="form-control" type="password" name="password" placeholder="Current Password" required=""></asp:TextBox>
        </div>
		
		<br>
        <div class="col-4">
            <asp:TextBox ID="password_new" runat="server" class="form-control" type="password" name="password_new" placeholder="New Password" required=""></asp:TextBox>
        </div>
		
		 <br>
		<div class="col-4">
            <asp:TextBox ID="password_confirm" runat="server" class="form-control" type="password" name="password_confirm" placeholder="Confirm password" required=""></asp:TextBox>
        </div>
		<br />
        <asp:Button ID="chgPassBtn" runat="server" Text="Change Password" CssClass="button-play smaller-button w-inline-block" OnClick="chgPassBtn_Click" />
		<br />

    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="pull-right" Visible="false"></asp:Label>
   
    </center>
            <div class="divider"></div>
          </div></div>
		  
		  	  


      <div class="column w-col w-col-12"><a href="/Logout.aspx" class="button w-button">LOGOUT</a></div>

		 <span id="_result"></span>  
       </div>
        </div>
      </div>
    </main>
</asp:Content>
