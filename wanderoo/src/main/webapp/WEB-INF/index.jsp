<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
    <title>Wanderoo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&family=Syne:wght@700;800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <h5 class="mb-0">Welcome to...</h5>
    <h1 id="main">Wanderoo</h1>
    <hr />
    <h3 class="text-danger mb-3"><c:out value="${error}" /></h3>
    <div class="row gx-4" id="main-body">
      <div class="col">
        <form:form
          action="/register"
          class="mt-2"
          method="POST"
          modelAttribute="newUser"
        >
          <div class="card p-3">
            <h1 class="mb-0">Register</h1>
            <hr />
            <div class="d-flex mb-3 align-items-center">
              <form:label for="name" path="name" class="form-label col-2"
                >Name:</form:label
              >
              <input type="text" class="form-control" path="name" name="name" />
            </div>
            <form:errors
              path="name"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="py-1"></div>
            <div class="d-flex mb-3 align-items-center">
              <form:label for="email" path="email" class="form-label col-2"
                >Email:</form:label
              >
              <form:input
                type="text"
                class="form-control"
                path="email"
                name="email"
              />
            </div>
            <!-- error: register email -->
            <form:errors
              path="email"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="d-flex mb-3 align-items-center">
              <form:label
                for="password"
                path="password"
                class="form-label col-2"
                >Password:</form:label
              >
              <form:input
                type="password"
                class="form-control"
                path="password"
                name="password"
              />
            </div>
            <!-- error: register pw -->
            <form:errors
              path="password"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="d-flex mb-3 align-items-center">
              <form:label
                for="confirmPass"
                path="confirmPass"
                class="form-label col-2"
                >Confirm Password:</form:label
              >
              <form:input
                type="password"
                class="form-control"
                path="confirmPass"
                name="confirmPass"
              />
            </div>
            <!-- error: register pw -->
            <form:errors
              path="confirmPass"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="d-flex justify-content-end">
              <button class="btn px-4">Register</button>
            </div>
          </div>
        </form:form>
      </div>

      <!-- LOGIN FORM -->
      <div class="col">
        <form:form
          action="/login"
          method="POST"
          modelAttribute="newLogin"
          class="mt-2"
        >
          <div class="card p-3">
            <h1 class="mb-0">Login</h1>
            <hr />
            <div class="d-flex mb-3 align-items-center">
              <label for="email" path="email" class="form-label col-2"
                >Email:</label
              >
              <form:input
                type="text"
                class="form-control"
                path="email"
                name="email"
              />
            </div>
            <!-- error: login email -->
            <form:errors
              path="email"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="d-flex mb-3 align-items-center">
              <form:label
                for="password"
                path="password"
                class="form-label col-2"
                >Password:</form:label
              >
              <form:input
                type="password"
                class="form-control"
                path="password"
                name="password"
              />
            </div>
            <!-- error: login pw -->
            <form:errors
              path="password"
              class="py-1 alert alert-danger"
            ></form:errors>
            <div class="d-flex justify-content-end">
              <button class="btn px-4">Login</button>
            </div>
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>
