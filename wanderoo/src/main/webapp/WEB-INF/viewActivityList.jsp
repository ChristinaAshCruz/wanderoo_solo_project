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
    <title>Wanderoo | Graduation Trip: Activities</title>
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
      <hr class="mb-3 mt-3" />
      <!-- content container -->
      <div class="activities mx-3">
        <!-- trip name -->
        <h5 class="sub-title">
          <c:out value="${trip.tripName}"></c:out> Trip > Activities
        </h5>
        <!-- header row -->
        <div
          class="d-flex align-items-center justify-content-between mb-2 flex-wrap"
        >
          <!-- header: LEFT -->
          <div class="flex-grow-1">
            <h1 class="my-0">Activities</h1>
          </div>
          <!-- header: right (buttons) -->
          <div class="flex-shrink-0 mb-2">
            <a href="/trip/${trip.id}/activity/new" class="btn me-2 my-0"
              >+ New activity</a
            >
            <a href="/trip/${trip.id}" class="btn my-0">Back To Trip</a>
          </div>
        </div>
        <!-- if list of activities are empty -->
        <!-- if list IS NOT empty -->
        <c:if test="${listSize == 0}">
          <div class="card text-center p-3">
            <h6 class="m-0">🥲 No activities added yet...</h6>
          </div>
        </c:if>
        <c:if test="${listSize > 0}">
          <c:forEach var="activity" items="${trip.tripActivities}">
            <!-- activity card -->
            <div class="activity mb-3 trip_card">
              <a href="/trip/${trip.id}/activity/${activity.id}">
                <div class="card list_card">
                  <div class="card-body">
                    <div class="d-flex">
                      <!-- LEFT column -->
                      <div class="flex-grow-1">
                        <h2><c:out value="${activity.name}"></c:out></h2>
                        <h6><c:out value="${activity.summary}"></c:out></h6>
                      </div>
                      <!-- RIGHT column -->
                      <div class="flex-shrink-0">
                        <!-- activity type -->
                        <p class="list_tag text-center mb-3">
                          <c:out value="${activity.activityType}"></c:out>
                        </p>
                        <div class="d-flex align-items-center">
                          <!-- distance from stay -->
                          <div>
                            <img
                              src="/images/marker.png"
                              alt=""
                              class="icons"
                            />
                          </div>
                          <div class="flex-grow-1">
                            <p class="p-0 m-0 ms-2">
                              <c:out
                                value="${activity.distanceFromStay}"
                              ></c:out>
                              miles
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </c:forEach>
        </c:if>
      </div>
    </div>
  </body>
</html>
