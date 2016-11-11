<%-- 
    Document   : PageFood
    Created on : Nov 6, 2016, 10:01:44 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
              crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise List</title>
    </head>
    <body>
        <h1>Exercise</h1>
        <hr>
    <center>
        <form class="form-inline" action="ExerciseListServlet" method="post">
            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon">
                        <img src="images/magnifying-glass-browser.png">
                    </div>
                    <input type="text" class="form-control" name='searchParam' placeholder = "Enter the Menu"
                           value ='${param.searchParam}'/>   
                </div>
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form> 
    </center>
        <br>
        <br>
        <div>
            <table class="table" style="text-align: center">
                
                    <tr style="background-color: orange; color: white">
                        <td>No.</td>
                        <td>List</td>
                        <td>Unit / Hour</td>
                        <td>Calories</td>
                        <td>Add to my calories</td>
                    </tr>
                    <c:set var="count" value="1" />
                    <c:forEach items="${exerciselist}" var="el" varStatus="vs">
                        <tr>
                            <td>${count}</td>
                            <td>${el.menu}</td>
                            <td>${el.unit}</td>
                            <td>${el.calories}</td>
                            <td>
                                <input type="checkbox" name="eid" value="${el.exerciseId}" title="Add to my calories"/>
                            </td>
                            <c:set var="count" value="${count+1}" />
                        </tr>
                </c:forEach>
            </table>
        </div>
</body>
</html>
