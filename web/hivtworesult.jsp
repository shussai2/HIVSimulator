<%-- 
    Document   : hiv step results
    Created on : Nov 16, 2015, 10:34:42 AM
    Author     : Sajjad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.*" %>

<!--Get parameters values from the html form 
which are contained in the request object
-->
<% 
String hiv1result  = request.getParameter("hiv1result");
String hiv2result  = request.getParameter("hiv2result");
%>


<!--A method that contains the algorithm to determine if 
a hiv 1 and hiv 2 results submitted by the user indicate
HIV presence.
-->
<%! 
public String hivResultProcessor(String hiv1, String hiv2)
{
   String result = "Could not determine HIV presence"; 
   
   if ((hiv1.equals("+")) && (hiv2.equals("-")))
   {
        result = "HIV-1 antibodies detected. Established HIV (type 1) infection is indicated.";       
   }
   else if ((hiv1.equals("-")) && (hiv2.equals("+")))
   {
        result = "HIV-2 antibodies detected. Established HIV (type 2) infection is indicated.";
   }
   else if ((hiv1.equals("+")) && (hiv2.equals("+")))
   {
        result = "HIV antibodies detected. Established HIV (type 1 and 2) infection is indicated.";
   }
   else
   {
       result = "Further test with FDA-approved HIV-1 Nucleic Acid Test (NAT) is suggested.";
   }
   return result;
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HIV Result</title>
    </head>
    
    <body>
        <h2>HIV-1 / HIV-2 Antibody differentiation Immunoassay Result</h3>
        <br>
        <h6>HIV-1 Selection: <%= hiv1result %> </h6>
        <h6>HIV-2 Selection: <%= hiv2result %> </h6>
        <br>
        <h3>Result:</h3><h3 style="color:red"> <%= hivResultProcessor(hiv1result, hiv2result) %> </h3>
        
                
    </body>
</html>
