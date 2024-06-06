<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CorexPage.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
       <div class="intro-header play-page">
    <div class="intro-content cc-homepage play-page">
      <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
        <div class="heading-jumbo-medium">Join now</div>
        <div class="heading-jumbo"><%: System.Configuration.ConfigurationManager.AppSettings["ServerName"] %></div>
      </div>
    </div>
  </div>
  <div class="section cc-store-home-wrap">
    <div class="container main-block">
      
      <center>
        
        <br>
        
        <div class="col-md-12">
        <div class="col-md-3 control-label"></div>
        <div class="col-md-9">
            <div class="input-group" style="border: none;background: none;">
                <h3>READ BELOW BEFORE YOU REGISTER</h3>
                <p>For your own safety, don't use ID / PW combination you used in other servers.</p>
                <p>Enter a real and safe email address. DO NOT use Yahoo Emails.</p>
                <p>Please don't share your account details to anyone.</p>

            </div>
        </div>
    </div>
        <br>
        <div class="col-4">
        	
            <asp:TextBox ID="username" runat="server" class="form-control" type="text" name="username" placeholder="Username" required=""></asp:TextBox>
        </div>
		
		 <br>
		<div class="col-4">
        	
            <asp:TextBox ID="password" runat="server" class="form-control" type="password" name="password" placeholder="Password" required=""></asp:TextBox>
        </div>
		
		 <br>
		<div class="col-4">
        	
            <asp:TextBox ID="password_confirm" runat="server" class="form-control" type="password" name="password_confirm" placeholder="Confirm password" required=""></asp:TextBox>
        </div>
		
		<br>
		<div class="col-4">
        	
            <asp:TextBox ID="email" runat="server" class="form-control" type="email" name="email" placeholder="Email Address" required=""></asp:TextBox>
        </div>
		<br />
          <asp:Image ID="captchaImage" runat="server" Height="40px" Width="150px" ImageUrl="~/MyCaptcha.aspx" />
          <br />
          <br />
          <div class="col-4">
          <asp:TextBox ID="captchacode" class="form-control" runat="server" Placeholder="Enter Captcha code" required="true"></asp:TextBox>
              </div>
          <br />
          <br />
       <asp:Button ID="registerBtn" runat="server" Text="Register" CssClass="button-play smaller-button w-inline-block" OnClick="registerBtn_Click" />
		<br />
          <asp:Label ID="Label1" runat="server" Text="Label" CssClass="pull-right" Visible="false"></asp:Label>
        <br />
		<div class="form-group login-help-block">
		<p>By clicking this button, I certify that I am aged thirteen or older and I agree to the <a style="color: #ff0000;" href="/terms" target="_blank">Terms and Privacy</a></p>
		<p>Already have an account? <a style="color: #ff0000;" href="/Login.aspx" class="pull-right">Log In now!</a></p>
	</div>
    <span id="_result"></span>
    </center>
        
      </div>
  </div>
    </main>
</asp:Content>
