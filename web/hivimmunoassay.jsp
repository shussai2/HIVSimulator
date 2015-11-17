<%-- 
    Document   : HIV Immunoassay Page
    Created on : November 5, 2015, 5:52:44 PM
    Author     : Sajjad Syed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>

    <title>HIV Immunoassay</title>
    <link href="mill.css" rel="stylesheet" type="text/css" />
    <link href="oform.css" rel="stylesheet" type="text/css" />
    </head>
    
  
    
    <body> 
        
    <div id="hivimmunoassay">
 
	<form action="./MainServlet" method="POST">
	    <fieldset>
	    	<legend>Immunoassay Steps</legend>
                <table>
                <tr> 
                    <td>
                        Please note the following are recommended Laboratory HIV
                        Testing Algorithm for Serum or Plasma Specimens.
                    </td>
                </tr>
                
                <br>
                <tr> 
                    <td>
                        <br>
                        Step 1: Was HIV-1/2 antigen / antibody combination immunoassay positive (+) or negative (-)?    
                    </td>
                </tr>
                
                <tr> 
                    <td>
                        <input type="radio" name="combo" value="combo+" required>combo+
                        <br>
                        <input type="radio" name="combo" value="combo-" required>combo-  
                    </td>
                </tr> 
                
                </table>
                
            </fieldset> 
            
	    <label class="newline">	
		<input type="submit" name="combosubmit" value="combosubmit"> 
		<br>
	    </label>
            
    </div>        
  
    </body>
    
    
    
    
</html>
