<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>JSPen</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
   <div class="top-banner">
        <div class="container">
            <div class="small-bold-text banner-text">New to JSPen : Create Your Notes</div>
        </div>
    </div>
   <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <br>
    <div class="card shadow bg-white py-5">
    <img alt="" class="img-fluid mx-auto" style="max-width" src="image/pencil.png">
    <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
    <div class="container">
    <button class="btn btn-outline-primary text-center"><a href="add_notes.jsp">Start</a></button>
    </div>
  
    </div>
   </div>

  </body>
</html>