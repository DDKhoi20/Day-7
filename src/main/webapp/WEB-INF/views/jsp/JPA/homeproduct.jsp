<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <jsp:include page="header.jsp" />

    <body>
        <div class="container" style="margin-top: 60px;">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-10">
                    <c:if test="${not empty bookList}">
                        <table class="table table-condensed table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="product" items="${productList}">
                                    <tr>
                                        <td>${product.id}</td>
                                        <td>${product.name}</td>
                                        <td>${product.price}</td>
                                        <td>
                                            <button class="btn btn-sm btn-primary" onclick="location.href='edit/${book.id}'">Add to cart</button>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </c:if>

                    <c:if test="${productList.size() == 0}">
                        <br>
                        <div class="alert alert-warning">
                            There is no data
                        </div>
                    </c:if>

                </div>
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>
</html>
