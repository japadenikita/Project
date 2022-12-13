<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
               background:none;
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
               font-size:20px;
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
                #buttonthree{
                   
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
           #buttonthree:hover{
               background: green;
           }
        </style>
      
    </head>
    <body>
         <script>
        function validateForm() {
        	
        	
        	var un = document.getElementById("Username").value;
        	var pw = document.getElementById("password").value;
        	 
        	if(un=="")
    		{
    		document.getElementById("username") .innerHTML="** Please Fill Username";
    		}
        	return false;
		
        	if(pw==""){
    				document.getElementById("password") .innerHTML="** please Fill Password";
    				 
    			}
        	return false;
            	if((un.length < 3) || (un.length > 15)){
            		  document.getElementById("username") .innerHTML="** Username must contain min 3 and max 15 character";
            		 
            	  }
            	 return false;
            	 if((pw.length < 5) || (pw.length > 15)){
            		  document.getElementById("password") .innerHTML="** Password length must be greater than 5 character and less than 15 character";
            		  
            	  }
            	 return false;
        }
 </script>
         <h1 style="color:white; text-align: center;">WELCOME TO LIBRARY MANAGMENT SYSTEM </h1>
         <h3 style="color:red;">Invalid Credentials !! Kindly login Again</h3>
        <form class="box"  onsubmit="return validateForm()" action="Adminlogin">
           
            <h1>
              ADMIN LogIn
            </h1>
     		<input type="text" name="un" value=""  placeholder="Enter Username" id="Username" >
     		<span id="username" style=color:red;></span>
     		
            <input type="password" name="pwd" value="" placeholder="Enter Password" id="password">
            <span id="password" style="color:red;"></span>
             
                
            <input id="buttonone" type=submit  value="log In" class ="buttonone" onclick="location.href='AdminHome.jsp'" /> 
            <input id="buttontwo" type=submit value="Sign In" class="buttontwo" onclick="location.href='AdminRegistration.jsp'" />
            <input id="buttonthree" type=submit value="User LogIn" class="buttontwo" onclick="location.href='index.jsp'" />
        </form>
        
    </body>
</html>