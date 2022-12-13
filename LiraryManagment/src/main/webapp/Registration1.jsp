<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lan="en" and dir="Itr">
    <head>
        <meta charset="utf-8">
        <title>Library Management System</title>
        <style>
           body{
               margin:0;
               padding:0;
               font-family: open-sans, sans-serif;
               background:url('https://images.pexels.com/photos/192928/pexels-photo-192928.jpeg?cs=srgb&dl=pexels-madison-inouye-192928.jpg&fm=jpg');
               background-size: cover;
           }
           .box{
               width: 350px;
               padding: 20px;
               position: absolute;
               top:50%;
               left:50%;
               transform: translate(-50%,-50%);
               background: rgba(0,0,0,0.4);
               text-align: center;

           }
            .box h3{
               font-size: 20px;
               margin-top: 10px;
               margin-left: 50px;
               text-transform: uppercase;
               font-family: 'open-sans',sans-serif;
           }
           .box h1{
               color: white;
               text-transform: uppercase;
               font-weight: 700;
           }
           .box input[type="text"],.box input[type="password"]
           {
               border:0;
               background: none;
               display: block;
               margin: 20px auto;
               text-align: center;
               border:3px solid #0367fd;
               padding: 14px 10px;
               width:220px;
               outline: none;
               color:white;
               border-radius: 24px;
               transition: 0.25px;
           }
           .box input[type="text"]:focus,.box input[type="password"]:focus{
               width:270px;
               border-color:yellowgreen;
           }
           #buttonone{
            border:0;
               background: none;
              
               font-size:12px;
               margin-left: 10px;
               margin-top: 25px;
               border:3px solid green;
               padding: 14px 35px;
               outline: none;
               color:white;
               border-radius: 24px;
               transition: 0.25px;
               cursor: pointer;
                }
                #buttontwo{
                   
                    border:0;
               background: none;
               
               font-size:12px;
               margin-left: 20px;
               margin-bottom: 50px;
               border:3px solid green;
               padding: 14px 35px;
               outline: none;
               color:white;
               border-radius: 24px;
               transition: 0.25px;
               cursor: pointer;
                
                }
           
           #buttonone:hover{
               background: green;
           }
           #buttontwo:hover{
               background: green;
           }
        </style>
        <script>
        var name = document.getElementById("name").value;
        var un = document.getElementById("Username").value;
        var pw = document.getElementById("password").value;
    	var email = document.getElementById("email").value;
    	var contact = document.getElementById("contact").value;
    	if(name=="")
		{
		document.getElementById("name") .innerHTML="** Please Fill Name";
		return false;
		}
    	if(contact=="")
		{
		document.getElementById("contact") .innerHTML="** Please Fill Contactnumber";
		return false;
		}
    	
    	if(!isNaN(contact)){
    		document.getElementById("contact") .innerHTML="** user must enter digits only not a character";
    		return false;
    	}
    	if(contact.length!=10){
    		document.getElementById("contact") .innerHTML="** mobile number must be 10 digit only";
    		return false;
    	}
    	if(email=="")
		{
		document.getElementById("email") .innerHTML="** Please Fill emailid";
		return false;
		}
    	if(email.indexOf('@') <= 0){
    		document.getElementById("email") .innerHTML="** @ Invalid POsition";
    		return false;
    	}
    	if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.')) {
    		document.getElementById("contact") .innerHTML="** . Invalid POsition";
    		return false;	
    	}
    	if(un=="")
		{
		document.getElementById("username") .innerHTML="** Please Fill Username";
		return false;
		}
    	if(pw==""){
				document.getElementById("password") .innerHTML="** please Fill Password";
				 return false;
			}
        	if((un.length < 3) || (un.length > 15)){
        		  document.getElementById("username") .innerHTML="** Username must contain min 3 and max 15 character";
        		  return false;
        	  }
        	 if((pw.length < 5) || (pw.length > 15)){
        		  document.getElementById("password") .innerHTML="** Password length must be greater than 5 character and less than 15 character";
        		  return false;
        	  }
      			if(!isNaN(Username)){
      				document.getElementById("username") .innerHTML="**only character allowed";
          		  return false;
      			}
        	
        	}
        </script>
    </head>
   
<body>
	 
<h3 style="color:red;">Issue While Registering User, Kindly Register Again.</h3>
  <form class="box" onclick="return validateForm()" action="register">
            
            <h1>
                Registration Form
            </h1>
            <input type="text" name="name"  required placeholder="Enter name" id="name">
            <input type="text" name="branch"  required placeholder="Enter branch" id="branch">
            <input type="text" name="contact"  required placeholder="Enter contact number" id="contact">
            <input type="text" name="email"  required placeholder="Enter email id" id="email">
            <input type="text" name="username"  required placeholder="Enter username" id="username">
           	<input type="password" name="password" required placeholder="Enter Password" id="password">
           	<input id="buttonone" type=submit value="Register" class="buttonone" onclick="location.href='Home.jsp'" />
			<!--  <input type="submit" id="buttonone" value="register">-->
</form>
</body>
</html>