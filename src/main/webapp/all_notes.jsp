<%@page import="java.util.List" %>
<%@page import="org.hibernate.Query" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="all_js_css.jsp" %>
<title>All notes</title>
</head>
<body>
     <div class="container-fluid p-0 m-0 ">
       <%@include file="navbar.jsp" %>
       <h2 class="text-uppercase center p-4">All Notes:</h2>
       <%
         Session s = FactoryProvider.getFactory().openSession();
         Query q= s.createQuery("from Notes");
         List<Notes> list = q.list();
         for(Notes note: list)
         {
       %>
        <div class="card  mt-3">
  <img class="card-img-top pl-4 pt-4 mx-auto" style="max-width:100px" src="image/pencil.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title mt-2"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-primary"><%=note.getAddedDate() %></b></p>
    <div class="container text-center">
    <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
     <a href="Edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
     </div>
  </div>
</div>
        
       <%  
        	
         }
       %>
     </div>
</body>
</html>