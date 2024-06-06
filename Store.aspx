<%@ Page Title="Store" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="CorexPage.Store" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <style>
.rank-table
{
  display: flex;
  justify-content: center;
  align-items: center;
}
table {
  font-family: Verdana;
  font-size: 14px;
  border-collapse: collapse;
  width: 90%;
  text-align:center;
}

td, th {
  padding: 10px;
  text-align: center;
  margin: 0;
}

tbody tr:nth-child(2n){
  background-color: #686f85;
}

th {
  position: sticky;
  top: 0;
 
  color: white;
  font-size: 18px;
  text-transform: uppercase;
}
</style>
<div class="intro-header play-page">
    <div class="intro-content cc-homepage play-page">
      <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
        <div class="heading-jumbo-medium">Donate Store</div>
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
       <h1><%: System.Configuration.ConfigurationManager.AppSettings["ServerName"] %> - Store</h1>
       <div class="clear-fix"></div>
     </header>
                <div class="block__body">
                <!-- TO BE GENERATED -->
                  <div class="store__category">
                    <div class="rank-table">
            		   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCommand="GridView1_RowCommand" RowStyle-BackColor="Transparent" AllowPaging="true" PageSize="10" CssClass="gridview-container" ShowHeader="false" >
    <Columns>
        
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="imgItem" runat="server" ImageUrl='<%#Eval("img_item") %>' Height="70" Width="70" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="name_item" runat="server" CssClass="gridview-item" Text='<%#Eval("name_item") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ID" Visible="false">
    <ItemTemplate>
        <asp:Label ID="id_item" runat="server" CssClass="gridview-item" Text='<%#Eval("id_item") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
        <asp:TemplateField HeaderText="Desc">
    <ItemTemplate>
        <asp:Label ID="desc_item" runat="server" CssClass="gridview-item" Text='<%#Eval("desc_item") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="value_item" runat="server" CssClass="gridview-item" Text='<%#Eval("value_item") +"$" %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="BUY" runat="server" CssClass="button-play smaller-button w-inline-block" Text="BUY" CommandName="BUY" CommandArgument='<%# Container.DataItemIndex %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

    <HeaderStyle BackColor="#4b545c" ForeColor="#ffffff" />
    <RowStyle />
</asp:GridView>
             
                      <div class="clear-fix">
                      </div>
                    </div>
           <div class="rank-table">
                           <br />
            <br />
             <asp:CheckBox ID="CheckBox1" runat="server" />
              <a href="#">  Check This Box For Confirm On Our Recharge Rules </a>
           </div>
                      <br />
                      <div class="rank-table">
                       <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" BackColor="Green"></asp:Label>

                      </div>
                      </div>
                  </div>
       </div>
					<!-- END GENERATED BLOCK -->
                </div>
              </div>
            <div class="clear-fix"></div>
      </div>
        </div>
      </div>
    </main>
</asp:Content>
