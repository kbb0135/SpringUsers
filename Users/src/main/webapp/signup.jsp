
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<header style="height: 30px;background-color: #7b99ff;">
</header>

<div class="container">
	 <h2 style="text-align:center;'">Sign up form</h2>

	
	<hr>
	<span style="font-weight: bold;font-size: 18px;color:blue">${message}</span>
	 <hr/>
	 
	<form action="signup" method="post">
  	    <div class="form-group" style="width: 50%;">
  	           <b>First Name</b>
  	           <input type="text" name="firstname" class="form-control">
  	           <b>Last Name</b>
  	           <input type="text" name="lastname" class="form-control">
  	           <b>Email</b>
  	           <input type="text" name="email" class="form-control">
	    </div>
	      <div class="form-group" style="width: 50%;">
  	           <b>Gender</b>
  	           <select name="gender" class="form-control">
  	              <option value="" disabled selected>Choose One</option>
  	              <option>Male</option>
  	              <option>Female</option>
  	           </select>
	    </div>
	    
	    <div class="form-group" style="width: 50%;">
  	           <b>Location</b>
  	           <select name="location" class="form-control" >
  	           <option value="" disabled selected>Choose One</option>
  	              <option>Texas</option>
  	              <option>NYC</option>
  	              <option>DC</option>
  	              <option>California</option>
  	              <option>Others</option>
  	           </select>
	    </div>
	    
	    
	     <div class="form-group" style="width: 50%;margin-top: 20px;">
  	           <button type="submit"  class="btn btn-primary">Add User</button>
  	           <a href="showSignup">
  	              <button type="button"  class="btn btn-primary">Show Users List</button>
  	           </a>
	    </div>
	</form>    
	    <hr/>
	     <img style="height: 60px;" src="https://www.iconpacks.net/icons/1/free-user-group-icon-307-thumb.png"/>

</div>
<h3>${info.firstname}</h3>
<h3>${msg}</h3>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
         <th>Email</th>
        <th>Gender</th>
        <th>Location</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${info.firstname}</td>
        <td>${info.lastname}</td>
        <td>${info.email}</td>
        <td>${info.gender}</td>
        <td>${info.location}</td>
        
        <%-- <td><img src="${tictick.url}" style="height: 120px;"></td> --%>
      </tr>

    </tbody>
  </table>


</body>
</html>