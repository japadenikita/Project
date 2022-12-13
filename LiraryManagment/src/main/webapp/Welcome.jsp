<%@page contentType="text/html" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
     <head>
            <title>Welcome Page </title>
           

            <style type="text/css">
                body
                {
                    margin:0px;
                    padding:0px;
                }
                .bgimage{
                    background-image: url('https://images.pexels.com/photos/46274/pexels-photo-46274.jpeg?cs=srgb&dl=pexels-caio-46274.jpg&fm=jpg');
                    background-size: 100% 110%;
                    width: 100%;
                    height: 100vh;
                }
                .menu{
                    width: 100%;
                    height: 80px;
                    background-color: rgb(0,0,0,0.5);
                }
                .leftmenu{
                    width: 20%;
                line-height: 80px;
                float: left;
                }
                .leftmenu h4{
                    padding-left: 10px;
                    font-weight: bold;
                    color: white;
                    font-size: 14px;
                    font-family: 'Montserrat',sans-serif;
                    text-transform: uppercase;
                }
                .rightmenu{
                    width: 80%;
                    height: 100px;
                    float: right;
                    
                }
                .rightmenu ul{
                    margin-left: 450px;
                    

                }
                .rightmenu ul li{
                    font-family: 'Montserrat',sans-serif;
                    display: inline-block;
                    list-style-type: none;
                    font-size: 15px;
                    color: white;
                    font-weight: bold;
                    line-height: 100px;
                    margin-left: 40px;
                    text-transform: uppercase;
                }
                
                .rightmenu ul li:hover{
                    color: orange;
                }
               
                #searchbox input[type=text],button{
                
            		
                	border: 2px solid white;
                	height: 25px;
                	width: 400px;
                	border-right: 0px;
                	paddding: 12px;
                	background: transparent;
                	color: white;
                	font-size: 15px;
                }
                
                #searchbox button{
               border: 3px solid white;
                width: 70px;
                height: 27px;
                background: white;
                color: black;
                paddding: 12px;
         		border-left: 0px;
                font-size: 12px;
                }
                
                .text{
                    width: 100%;
                    margin-top: 185px;
                    text-transform: uppercase;
                    text-align: center;
                    color: white;
                }
                .test h4{
                    font-size: 20px;
                    font-family: 'open-sans',sans-serif;

                }
                .text h1{
                    font-size: 60px;
                    font-family: 'Montserrat',sans-serif;
                    font-weight: 700px;
                   
                }
                .text h3{
                    font-size: 15px;
                    font-family: 'open-sans',sans-serif;
                    margin-top: 25px;
                }
                #buttonone{
                    background-color: white;
                    border: none;
                    font-size: 12px;
                    font-weight: bold;
                    line-height: 40px;
                    text-transform: uppercase;
                    width:150px;
                    font-family: 'open-sans',sans-serif;
                    margin-top:  20px;
                    border: 3px solid white;
                }
               
            </style>
        </head>
     <body>
    
            <div class="bgimage">
                <div class="menu">
                   
                </div>
                <div class="text" id=searchbox>
             <h3><%= request.getAttribute("name") %></h3>
             <h4>welcome to library management system</h4>
                    <h1>Libraries are where it all begins</h1>
                    <input type="text" placeholder="Search Book Here">
                    <button>SEARCH</button>
                   
                    <h3> READ . GET KNOWLEDGE . EXLPORE THE WORLD</h3>
                    
                   <input id ="buttonone" type=button onClick="location.href='index.jsp'" value='Delete User'>
                    

                </div>
                
            </div>
           
        </body>
    
</html>