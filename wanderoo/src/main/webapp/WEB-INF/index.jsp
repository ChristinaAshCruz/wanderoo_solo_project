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
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wanderoo | Dashboard</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />

    <link rel="stylesheet" href="/css/style2.css" />
    <!-- FONT AWESOME -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- BOOTSTRAP -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  </head>
  <body class="p-0 mx-auto d-flex flex-column min-vh-100">
    <div class="container py-4 mb-5">
      <h4 class="mb-0 main-header-style">Welcome to...</h4>
      <h1 id="main" class="main-header-style">Wanderoo</h1>
      <hr />
      <main>
        <!-- Register/login errors -->
        <h3 class="text-danger mb-3"><c:out value="${error}" /></h3>
        <!-- ROW: REGISTER/LOGIN -->
        <div
          class="d-flex flex-column flex-xl-row gap-3 justify-content-center"
        >
          <!-- REGISTER -->
          <div class="col">
            <form:form
              action="/register"
              class="mt-2"
              method="POST"
              modelAttribute="newUser"
            >
              <div class="card p-3">
                <h3 class="mb-0">Register</h3>
                <hr />
                <div class="d-flex mb-3 align-items-center">
                  <form:label for="name" path="name" class="form-label col-2"
                    >Name:</form:label
                  >
                  <input
                    type="text"
                    class="form-control"
                    path="name"
                    name="name"
                  />
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
                <h3 class="mb-0">Login</h3>
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
      </main>
    </div>
    <footer class="footer mt-auto py-4">
      <div
        class="container d-flex justify-content-between align-items-end flex-column gap-1 text-md-none"
      >
        <div>
          <p class="p-0 m-0">© 2023 Christina Ashley Cruz</p>
        </div>
        <div>
          Icons made by
          <a href="https://www.flaticon.com/authors/freepik" title="Freepik">
            Freepik</a
          >
          from
          <a href="https://www.flaticon.com/" title="Flaticon"
            >www.flaticon.com</a
          >
        </div>
        <div>
          <a target="_blank" href="https://icons8.com/icon/90519/spring-boot"
            >Spring Boot</a
          >
          and
          <a target="_blank" href="https://icons8.com/icon/3764/sql">SQL</a>
          icon by
          <a target="_blank" href="https://icons8.com">Icons8</a> icon by
          <a target="_blank" href="https://icons8.com">Icons8</a>
        </div>
      </div>
    </footer>
  </body>
</html>
