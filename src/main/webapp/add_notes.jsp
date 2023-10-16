<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
  <%@include file="all_js_css.jsp" %>
</head>
<body>
   <div class="container-fluid p-0 m-0">
     <%@ include file="navbar.jsp" %>
    <h1 class="container-fluid p-4 m-8">Please Enter Note Details</h1>
    <br>
     <div class="container-fluid p-4 m-5">
    <!-- This is the form -->
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" required  name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Text">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" id="content" required placeholder="Enter Your Content here" class="form-control" style="height: 300px;"></textarea>
  </div>
   <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
   </div>
</form>
</div>
</div>
</body>
</html>