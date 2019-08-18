<%-- 
    Document   : StudentReg
    Created on : Aug 16, 2018, 11:38:23 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="search.jsp"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav ml-auto">
<!--                <a class="nav-item nav-link" href="Admin.jsp">Admin</a>-->
                <a class="nav-item nav-link" href="search.jsp">Home</a>
                <a class="nav-item nav-link" href="StudentReg.jsp">Student Registration</a>
                <a class="nav-item nav-link" href="ShowReg.jsp">Show Registered</a>
              </div>
            </div>
        </nav>
        
        <form method="post" action="controllerservlet" >
            <input type="hidden" name="op" value="addRegistration">
 
 
            <div class="container">
                <h2 class="text-center"> Student Registration</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" id="name"   name="name" class="form-control"  aria-describedby="Name" placeholder="Your Name">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text"  name="address" class="form-control"  aria-describedby="address" placeholder="Address">
                        </div>
                        <div class="form-group">
                            <label for="occupation">Occupation</label>
                            <input type="text" name="occupation" class="form-control"  aria-describedby="" placeholder="Occupation">
                        </div>
                        <div class="form-group">
                            <label for="technology">Technology</label>
                            <input class="form-control"  type="text" name="technology" aria-describedby="technology" placeholder="Technology">
                        </div>
                        <div class="form-group">
                            <label for="companyname">Company Name</label>
                            <input class="form-control" type="text" name="companyname" aria-describedby="companyname" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="">Date of Birth</label>
                            <input type="text" name="dob"  class="form-control"  aria-describedby="dob" placeholder="Date Of Birth">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email">Email address</label>
                            <input class="form-control" type="email" name="email"   aria-describedby="email" placeholder="Email ID">
                        </div>
                        <div class="form-group">
                            <label for="mob">Mobile</label>
                            <input type="text" name="mob" class="form-control"  aria-describedby="mob" placeholder="Mobile">
                        </div>
                        <div class="form-group">
                            <label for="collagename">College Name</label>
                            <input type="text" name="collagename" class="form-control"  aria-describedby="collagename" placeholder="College Name">
                        </div>
                        <div class="form-group">
                            <label for="prn">PRN</label>
                            <input type="text" name="prn" class="form-control"  aria-describedby="prn" placeholder="prn">
                        </div>
                        <div class="form-group">
                            <label for="dpt">Department Name</label>
                            <input type="text" name="dpt"  class="form-control"  aria-describedby="dpt" placeholder="Department Name">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <input type="submit" class="btn btn-primary btn-block" value="Submit">
                        </div>
                    </div>
                </div>     
                <!-- <button type="submit" class="btn btn-primary btn-block">Register</button>
                </form> <!-- /form -->
            </div> <!-- ./container -->
        </form>
</body>

</html>
        