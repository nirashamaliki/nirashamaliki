<%-- 
    Document   : index
    Created on : Jul 11, 2022, 4:21:38 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lk.icbt.src.Person" %>
<%@page import="lk.icbt.src.Student" %>
<%@page import="lk.icbt.src.Util" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            //Display Details
            
            String name = "John";
            String greeting = "Hello";
        %>
        
        <h1><%out.print(greeting + " "+ name);%></h1>
       
        
        <%
            //Person Name
              
            Person[] persons = Util.getStudents();
            
            for(Person p : persons)
            {
               out.print("<h1>"+ p.getName()+"</h1>");
            }          
        %>
        
  
        <%
            //table Student Details
            
            Student[] student = Util.getStudents();
            
            out.print("<table border='1'>");
            out.print("<tr><th>Student No</th><th>Name</th></tr>");
            
           for(Student st : student)
            {
                out.print("<tr>");
                   out.print("<td>"+st.getNo()+"</td>");
                   out.print("<td>"+st.getName()+"</td>");
                out.print("</tr>");
    
            }  
            out.print("</table>");
        %>
        
    </body>
</html>
