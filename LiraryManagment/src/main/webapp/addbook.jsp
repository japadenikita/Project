<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>ADD Book</title>
        <style>
           body{
               margin:0;
               padding:0;
               font-family: open-sans, sans-serif;
               background:url('https://images.pexels.com/photos/6344231/pexels-photo-6344231.jpeg?cs=srgb&dl=pexels-cottonbro-6344231.jpg&fm=jpg');
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
           
           .box h1{
               color: white;
               text-transform: uppercase;
               font-weight: 700;
           }
           .box input[type="text"]
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
           .box input[type="text"]:focus{
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
      
    </head>
    <body>
        
        
        <form class="box"  action="addbook" method="post">
           
            <h1>
             BOOK DETAILS
            </h1>
     		<input type="text" name="titl" value=""  placeholder="Title of the book" id="title" >
     		
     	  <input type="text" name="athr" value="" placeholder="Author of the book " id="author">
     	  
     	   <input type="text" name="pblishr" value="" placeholder="publisher of the book " id="publisher">
     	   
     	    <input type="text" name="yr" value="" placeholder="Year of publication " id="year">
     	    
     	     <input type="text" name="cops" value="" placeholder="Number of copies " id="copies">
     	     
     	     
     	    
     	     <input id ="buttontwo" type=button onClick="location.href='addbook1.jsp'" value='ADD'>
     	     <input id ="buttonone" type=button onClick="location.href='AdminHome.jsp'" value='Back'>
     	     
     	     
     	   </form>
        
    </body>
</html>