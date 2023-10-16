<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Query" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
    <div class="container">
     <%@include file="navbar.jsp" %>
     <h1>This is update page</h1>
     <%
      int noteid=Integer.parseInt(request.getParameter("note_id").trim());
      Session s=FactoryProvider.getFactory().openSession();
      Notes note = (Notes)s.get(Notes.class,noteid);
      %>
        <form action="UpdateServlet" method="post">
        <input value="<%= note.getId()%>" name="noteid" type="hidden"/>
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" required  name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Text" value="<%=note.getTitle() %>"/>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" id="content" required placeholder="Enter Your Content here" class="form-control" style="height: 300px;"> <%=note.getContent()%></textarea>
  </div>
   <div class="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
   </div>
</form>
    </div>
</body>
</html>