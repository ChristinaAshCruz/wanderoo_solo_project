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
    <title>Wanderoo | New Trip</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css"
    />
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
    <!-- main container -->
    <div class="container">
      <!-- nav bar -->
      <div
        class="d-flex flex-wrap justify-content-between align-items-center mb-3 header_row"
        id="header"
      >
        <h3 id="logo" class="my-0 flex-grow-1 pt-2">Wanderoo.</h3>
        <div class="d-flex trip_row flex-wrap">
          <a href="/dashboard" class="nav-link">Back to Trips</a>
          <a href="/about" class="nav-link">About</a>
          <a href="#" class="nav-link">
            <i class="bi bi-person-fill me-1"></i><c:out value="${user.name}"
          /></a>
          <a href="/logout" class="nav-link logout">Logout</a>
        </div>
      </div>
      <hr />
      <!-- trip name -->
      <h5 class="sub-title"><c:out value="${tripName}"></c:out> Trip</h5>
      <!-- form heading -->
      <h1 class="flex-grow-1">Create a New Restaurant</h1>
      <!-- form card -->
      <div class="card p-3">
        <form:form
          action="/trip/${tripId}/restaurant/new"
          class="mt-2"
          method="POST"
          modelAttribute="newRestaurant"
        >
          <!-- name -->
          <div class="mb-3">
            <form:label path="name" class="form-label">Name:</form:label>
            <form:input type="text" class="form-control" path="name" />
            <form:errors path="name"></form:errors>
          </div>
          <!-- distance from stay -->
          <div class="mb-3">
            <form:label path="distanceFromStay" class="form-label"
              >Distance From Stay (miles):</form:label
            >
            <form:input
              type="number"
              class="form-control"
              path="distanceFromStay"
            />
            <form:errors path="distanceFromStay"></form:errors>
          </div>
          <!-- cuisine type -->
          <div class="mb-3">
            <form:label path="cuisineType" class="form-label"
              >Cuisine Type:</form:label
            >
            <form:input
              type="text"
              class="form-control"
              path="cuisineType"
              name="cuisineType"
            />
            <form:errors path="cuisineType"></form:errors>
          </div>
          <!-- summary -->
          <div class="mb-3">
            <form:label for="summary" class="mb-2" path="summary"
              >Summary:</form:label
            >
            <form:textarea
              class="form-control"
              placeholder="Write a short summary here..."
              name="summary"
              path="summary"
              style="height: 100px"
            ></form:textarea>
          </div>
          <div class="mb-3">
            <form:errors path="summary" class="text-danger mb-3"></form:errors>
          </div>
          <!-- info link -->
          <div class="mb-3">
            <form:label path="infoLink" class="form-label"
              >🔎 Link for more info:</form:label
            >
            <form:input
              type="text"
              class="form-control"
              path="infoLink"
              name="infoLink"
            />
            <form:errors path="infoLink"></form:errors>
          </div>
          <div class="d-flex justify-content-end">
            <a href="/trip/${tripId}/restaurant/list" class="btn me-2"
              >Cancel</a
            >
            <button class="btn btn-primary px-4">Create Restaurant</button>
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>
