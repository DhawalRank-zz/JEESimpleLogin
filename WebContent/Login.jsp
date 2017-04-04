<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login here</title>
	<!--Import Google Icon Font-->
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import materialize.css-->
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<div align="center" style="padding-top: 20px">
  <ul class="collapsible" data-collapsible="accordion" style="width:50%;">
    <li>
      <div class="collapsible-header"><i class="material-icons">filter_drama</i>Fake</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
    <li>
    <div class="collapsible-header"><i class="material-icons">place</i>Login Here</div>
      <div class="row collapsible-body">
      <a class="waves-effect waves-light" href="#modal1">Modal</a>
      
      <div id="modal1" class="modal">
    <div class="modal-content">
  <!-- Modal Structure -->

      <h4>Login Here</h4>
    <form class="col s12" action="/SimpleLogin/CheckLogin" method="POST">
    
      <div class="row">
        <div class="input-field col s12">
          <input id="u_name" name="u_name" type="text" class="validate" required="required">
          <label for="u_name">User Name</label>
        </div>
        </div>
        
        <div class="row">
        <div class="input-field col s12">
          <input id="password" name="password" type="password" class="validate" required="required">
          <label for="password">Password</label>
        </div>
      	</div>
      
       <div class="row">
       <div class="input-field col s12">
       <button type="submit" class="waves-effect waves-light btn">Submit</button>
       </div>
       </div>
       
        </form>
        </div>    
        </div>
  </div>
          
 
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">whatshot</i>Fake</div>
      <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
    </li>
  </ul>
  
         <div class="row">
       <div class="input-field col s12">
       <button type="button" id = "button1" class="waves-effect waves-light btn" onclick="addNew()">Submit</button>
       </div>
       </div>

</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
  });
  var count = 1;
  function addNew() {
	  count++;
	  var inputTag = document.createElement("div");     
	  inputTag.className = "row";
	  inputTag.innerHTML = "<div align='center' class='input-field col s12'><button type='button' id=button" + count + " class='waves-effect waves-light btn' onclick='addNew()'>Submit</button></div>";    
	  document.body.appendChild(inputTag);
}
  
</script>
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>