<%-- 
    Document   : Test Selection Type Page
    Created on : Oct 30, 2015, 5:52:44 PM
    Author     : Sajjad Syed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>

    <title>Test Selection Type</title>
    <link href="mill.css" rel="stylesheet" type="text/css" />
    <link href="oform.css" rel="stylesheet" type="text/css" />
    </head>
    
  
    
    <body> 
        
    <div id="testtype">
 
	<form action="./MainServlet" method="POST">
	    <fieldset>
	    	<legend>Test Type</legend>
                
	    <label class="newline">
	    	<legend>Please select test type to Simulate</legend>
                <br>
	    	<select name="tests[]" size="4">
                <option value="HIV Immunoassay">HIV Immunoassay</option>
	    	<option value="HIV Nucleic Acid Testing (NAT)">HIV Nucleic Acid Testing (NAT)</option>
	    	<option value="HIV Viral Load Count">HIV Viral Load Count</option>
	    	<option value="AIDS Monitoring">AIDS Monitoring</option>
	    	</select><br><br>
	    	
            </fieldset>	
                
            
	    <label class="newline">	
		<input type="submit" name="Simulate Test" value="testtype"> 
		<br>
	    </label>
            
    </div>        
  
    </body>
    
    
    
    
</html>
