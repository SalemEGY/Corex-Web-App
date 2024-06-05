<%@ Page Title="Download" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="CorexPage.Download" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="intro-header play-page">
    <div class="intro-content cc-homepage play-page">
      <div data-w-id="86e64837-0616-515b-4568-76c147234d20" class="intro-text" style="filter: blur(0px);">
        <div class="heading-jumbo-medium">download</div>
        <div class="heading-jumbo">the client</div>
        <div class="client-downloads w-row">
            <div class="w-col w-col-4">
            <div class="heading-jumbo-small play">DIRECT</div>
            <div class="label cc-light">.exe file</div><img src="./CorexConquer _ Free to Play Fantasy MMORPG - PLAY-COREX.COM_files/play-page-icons-exe.png" class="image-3">
            <a href="<%: CorexPage.Download.DirectDownload %>" data-w-id="86e64837-0616-515b-4568-76c147234d27" style="filter: brightness(102.278%); transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d; will-change: filter;" class="button-play small-button w-inline-block">
              <div>download</div>
            </a>
          </div><div class="w-col w-col-4">
            <div class="heading-jumbo-small play">GOOGLE DRIVE</div>
            <div class="label cc-light">.exe file</div><img src="./CorexConquer _ Free to Play Fantasy MMORPG - PLAY-COREX.COM_files/play-page-icons-exe.png" class="image-3">
            <a href="<%: CorexPage.Download.GOOGLEDRIVE %>" data-w-id="86e64837-0616-515b-4568-76c147234d27" style="filter: brightness(102.268%); transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d; will-change: filter;" class="button-play small-button w-inline-block">
              <div>download</div>
            </a>
          </div><div class="w-col w-col-4">
            <div class="heading-jumbo-small play">MEDIAFIRE</div>
            <div class="label cc-light">.exe file</div><img src="./CorexConquer _ Free to Play Fantasy MMORPG - PLAY-COREX.COM_files/play-page-icons-exe.png" class="image-3">
            <a href="<%: CorexPage.Download.MEDIAFIRE %>" data-w-id="86e64837-0616-515b-4568-76c147234d27" style="filter: brightness(102.265%); transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d; will-change: filter;" class="button-play small-button w-inline-block">
              <div>download</div>
            </a>
          </div>        </div>
      </div>
    </div>
</div>
<div class="section cc-store-home-wrap">
    <div class="container main-block">
      <div class="motto-wrap">
        <div class="label cc-light">technical support</div>
        <div class="paragraph-bigger">Common Quick Fixes<br></div>
      </div>
      <div class="divider"></div>
      <div class="text-block-4">Please download the latest version of Visual C++ Redistributable Runtimes.</div><a href="https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/" class="button half-width w-button" target="_blank">Visual C++ Redistributable Runtimes</a>
      <div class="divider"></div>
      <div class="text-block-4">If you are still experiencing other issues, please get in touch with support on our Discord.</div><a href="https://discordapp.com/widget?id=992034442723983431&amp;theme=dark" class="button half-width w-button" target="_blank">GET SUPPORT ON DISCORD</a></div>
  </div>



<style>
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 99; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #121b39;
  margin: auto;
  padding: 0;
  border: 1px solid #010922;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #686f85;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color: #010a29;
  color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color: #010a29;
  color: white;
}
</style>

<script>
// Get the exeModal
var exeModal = document.getElementById("exeModal");
var zipModal = document.getElementById("zipModal");

// Get the button that opens the modal
var btnEXE = document.getElementById("btnEXE");
var btnZIP = document.getElementById("btnZIP");

// Get the <span> element that closes the modal
var closeEXE = document.getElementsByClassName("close")[0];
var closeZIP = document.getElementsByClassName("close")[1];

// When the user clicks the button, open the modal 
btnEXE.onclick = function() {
  exeModal.style.display = "block";
}

btnZIP.onclick = function() {
  zipModal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
closeEXE.onclick = function() {
  exeModal.style.display = "none";
}
closeZIP.onclick = function() {
  zipModal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == exeModal) {
    exeModal.style.display = "none";
  }
  
  if (event.target == zipModal) {
    zipModal.style.display = "none";
  }
}
</script>
    </main>
</asp:Content>
