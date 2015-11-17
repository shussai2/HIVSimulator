<%-- 
    Document   : HIV Immunoassay Step 2 Page
    Created on : November 5, 2015, 5:52:44 PM
    Author     : Sajjad Syed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>

    <title>HIV Immunoassay Step 2</title>
    <link href="mill.css" rel="stylesheet" type="text/css" />
    <link href="oform.css" rel="stylesheet" type="text/css" />
    </head>
    
  
    
    <body> 
        
    <div id="hivpositive">
 
	<form action="./MainServlet" method="POST">
	    <fieldset>
	    	<legend>Differentiation Immunoassay</legend>
                <table>
                <tr> 
                    <td>
                        HIV-1/2 antigen/antibody Combination Immunoassay Steps.
                    </td>
                </tr>
                
                <br>
                <tr> 
                    <td>
                        <br>
                        Perform HIV-1/HIV-2 antibody differentiation immunoassay 
                        After performing differentiation immunoassay
                        Step 2: Was HIV-1/2 antigen/antibody combination immunoassay positive or negative?
                    </td>
                </tr>
                
                <tr>
                    <td>
                    Was HIV-1 tested to be positive or negative?
                    </td>
                    
                    <td>
                        <input type="radio" name="hiv1result" value="+">+
                    </td>
                        
                    <td>    
                        <input type="radio" name="hiv1result" value="-">- 
                    </td>
                    

                    
                </tr> 
                
                <tr>
                    <td>                    
                    Was HIV-2 tested to be positive or negative? 
                    </td>
                    
                    <td>
                        <input type="radio" name="hiv2result" value="+">+
                    </td>
                    
                    <td>
                        <input type="radio" name="hiv2result" value="-">- 
                    </td>
                   
                    
                </tr>                
                </table>
                
            </fieldset> 
            
	    <label class="newline">	
		<input type="submit" name="differentiationSubmit" value="differentiationSubmit"> 
		<br>
	    </label>
            
    </div>        
  
    </body>
    
    
    
    
</html>
