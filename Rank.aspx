<%@ Page Title="Rank" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="CorexPage.Rank" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
       <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
   
<div class="intro-header play-page">
    <div class="intro-content cc-homepage play-page">
      <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
        <div class="heading-jumbo-medium">Ranking</div>
        <div class="heading-jumbo"><%: System.Configuration.ConfigurationManager.AppSettings["ServerName"] %></div>
      </div>
    </div>
  </div>
  <div class="section cc-store-home-wrap">
    <div class="container main-block">
      
     <div class="main-content hiscores__outer" role="main">

          <div class="store">
            
            <div class="store__main w-col-12">
              <div class="block">
                <header class="block__header">
                  <h1><%: System.Configuration.ConfigurationManager.AppSettings["ServerName"] %> - Top Players</h1>
                  <div class="clear-fix"></div>
                </header>
                <div class="block__body">
                <!-- TO BE GENERATED -->
                  <div class="store__category">
                    <div class="rank-table">
					  <asp:GridView ID="GridView1" CssClass="col-sm-12" runat="server" AutoGenerateColumns="false"
                          HeaderStyle-BorderStyle="None" >
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Font-Size="Large" HeaderStyle-Font-Italic="true" />
            <asp:BoundField DataField="Level" HeaderText="Level" ItemStyle-Font-Size="Large" HeaderStyle-Font-Italic="true" />
        </Columns>
    </asp:GridView>
                      <div class="clear-fix"></div>
                    </div>
                  </div>
					<!-- END GENERATED BLOCK -->
                </div>
              </div>
            </div>
            <div class="clear-fix"></div>
          </div>
      </div>
        </div>
      </div>
    </main>
</asp:Content>
