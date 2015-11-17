<%-- 
    Document   : tracks.jsp
    Created on : July 12, 2015, 5:52:44 PM
    Author     : Sajjad Syed
    Initial entry point for the user to enter the 
    information pertaining to their registration.
    tracks.jsp calls TracksServlet for processing
    of the information collected in its form fields
    compute cost button is clicked.
    track.jsp also repopulates its form fields based
    on the user object created during the session 
    creation in TracksServlet.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %>   
<%@ page import="java.util.*" %>



<html>
<head>

   <title>HIV Simulator</title>
   <link href="mill.css" rel="stylesheet" type="text/css" />
   <link href="oform.css" rel="stylesheet" type="text/css" />
</head>


<body>
   <div id="heading">
      <img src="hiv.jpg" alt="HIV Simulator" />
      <ul>
         <a href="#">Home</a>
         <a href="#">Login</a>
         <a href="#">About Us</a>
         <a href="#">Contact Us</a>
     </ul>
 
   </div>
    
   <label class="newline"></label>

   <div id="pageContent">
	<br>
        <br>
        <br>
        <br>
        <br>
	<form action="./MainServlet" method="POST">
	    <fieldset>
                
                
        <table>
            <tr> 
                <td>
                    <legend></legend>
                    The Simulator comprises of material obtained from 
                    Center For Disease Control (CDC) and Food and Drug 
                    Administration (FDA) guidance documents. 
                    
                    These guidances are available at: 
                    http://www.cdc.gov/hiv/pdf/hivtestingalgorithmrecommendation-final.pdf. 
                    http://www.fda.gov/downloads/BiologicsBloodVaccines/
                    GuidanceComplianceRegulatoryInformation/Guidances/
                    Blood/UCM210270.pdf. 
                    
                    Please read and acknowledge the information stated above 
                    before running a simulation.               
                </td>
            </tr>
        </table>

        </fieldset>
            
            
	    <label class="newline">	
		<input type="submit" name="I Accept" value="I Accept">
		<br>
	    </label>

	  </form>

   </div>

</body>

</html>