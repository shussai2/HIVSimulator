<%-- 
    Document   : User Info Page
    Created on : Oct 30, 2015, 5:52:44 PM
    Author     : Sajjad Syed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>

    <title>User Info</title>
    <link href="mill.css" rel="stylesheet" type="text/css" />
    <link href="oform.css" rel="stylesheet" type="text/css" />
    </head>
    
  
    
    <body> 
        
    <div id="userinfo">
 
	<form action="./MainServlet" method="POST">
	    
            <fieldset>
	    	<legend>User Information</legend>
			
	    	<label for="age">Age:</label>
	    	<input type="text" name="years" id="years" class=years placeholder="years" required>
                <input type="text" name="months" id="months" class=months placeholder="months" required>
                <br>	
	    	
	    	<label for="gender">Gender:</label>
                
                <select name="gender" id="gender" required>
                    <option value=" "> </option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
                
                <br>

	    	<label for="race">Race:</label>
                <select name="race" id="race" required>
                    <option value=" "> </option>
                    <option value="African American">African American</option>
                    <option value="Native American">Native American</option>
                    <option value="Asian">Asian</option>
                    <option value="Caucasian">Caucasian</option>
                </select>
                <br>
                
            </fieldset> 
            
	    <label class="newline">	
		<input type="submit" name="submit info" value="userinfo"> 
		<br>
	    </label>
            
    </div>        
  
    </body>
    
    
    
    
</html>
