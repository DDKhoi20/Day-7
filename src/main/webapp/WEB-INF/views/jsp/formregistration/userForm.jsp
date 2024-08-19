<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2 class="mt-4">User Registration Form</h2>
    <mvc:form modelAttribute="user" action="result" class="mt-4">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name (*)</label>
            <mvc:input path="name" id="firstName" class="form-control" required="true" placeholder="First Name"/>
        </div>

        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name (*)</label>
            <mvc:input path="lastname" id="lastName" class="form-control" required="true" placeholder="Last Name"/>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password (*)</label>
            <mvc:password path="password" id="password" class="form-control" required="true" placeholder="Password"/>
        </div>

        <div class="mb-3">
            <label for="detail" class="form-label">Detail</label>
            <mvc:textarea path="detail" id="detail" class="form-control" placeholder="Detail information"/>
        </div>

        <div class="mb-3">
            <label for="birthDate" class="form-label">Birth Date</label>
            <mvc:input path="birthDate" id="birthDate" class="form-control" type="date"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Gender</label>
            <mvc:radiobuttons path="gender" items="${genders}" class="form-check-input"/>
        </div>

        <div class="mb-3">
            <label for="country" class="form-label">Country</label>
            <mvc:select path="country" id="country" items="${countries}" class="form-select"/>
        </div>

        <div class="mb-3 form-check">
            <mvc:checkbox path="nonSmoking" class="form-check-input" checked="true" id="nonSmoking"/>
            <label for="nonSmoking" class="form-check-label">Non Smoking</label>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </mvc:form>
</div>
<script src="${pageContext.request.contextPath}/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>