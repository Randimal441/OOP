<%--
    Document   : user-list
    Created on : Sep 11, 2024, 5:01:32 PM
    Author     : Java Programming with Aldrin
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        *{
            font-family: sans-serif;
        }
        body{
            background-image: url("https://img.freepik.com/free-photo/office-supplies_23-2148103964.jpg?t=st=1728601023~exp=1728604623~hmac=e3685c1ce697df791855b215e79627f1f7672599a685bd29b6163e7fe517ba64&w=900");
            background-repeat: no-repeat;
            background-size: cover;

        }
        .profile-container h1{
            color: #eaeaea;
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin: 40px 0;
            text-shadow: 2px 4px 5px rgba(255, 255, 255, 0.5);
        }
        .profile-container {

            background-image: url("https://img.freepik.com/free-photo/orange-writing-implements-with-chalkboard_23-2147879323.jpg?t=st=1728603144~exp=1728606744~hmac=3d518eba585b120e63f19eac5e18664b5d8061955715b98b33b8325e29b4470c&w=360");
            background-repeat: no-repeat;
            background-size: cover;
            width: 35%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgb(255, 255, 255);

        }

        .profile-container form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .profile-container label {
            color: #eaeaea;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .profile-container input {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #f0f0f0;
        }

        .profile-container input[readonly] {
            background-color: #eaeaea;
        }

        .profile-container .actions {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .profile-container .actions a {
            padding: 20px 20px;
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            margin-left: 40.5%;
        }
        .profile-container .actions1 a {
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            margin-left: 39%;

        }

        .profile-container .actions a:hover {
            background-color: #0056b3;
        }
        .profile-container .actions1 a:hover {
            background-color: #0056b3;
        }

        .con button{
            font-size: 25px;
            font-weight: bold;
            margin: 20px 0;
            padding: 3%;
            border: 0;
            border-radius: 5px ;
            background-color: #ffffff;
            width: 25%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .profile-container button:hover{
            color: #656464;
        }
        .con{
            margin-top: 15%;
            margin-left: 42%;
        }

    </style>
</head>
<body>

<div class="profile-container">
    <h1>User Profile</h1>

    <c:forEach var="user" items="${listUser}">
        <form action="#" method="post">
            <%--@declare id="email"--%><%--@declare id="phone"--%><%--@declare id="address"--%><%--@declare id="lastname"--%><%--@declare id="firstname"--%><%--@declare id="uid"--%><%--@declare id="id"--%>

            <label for="uid">User ID:</label>
            <input type="text" name="uid" value="${user.uid}" readonly />

            <label for="firstname">First Name:</label>
            <input type="text" name="firstname" value="${user.firstname}" readonly />

            <label for="lastname">Last Name:</label>
            <input type="text" name="lastname" value="${user.lastname}" readonly />

            <label for="address">Address:</label>
            <input type="text" name="address" value="${user.address}" readonly />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" value="${user.phone}" readonly />

            <label for="email">Email:</label>
            <input type="text" name="email" value="${user.email}" readonly />

            <div class="actions">
                <a href="edit?id=${user.id}">Edit Profile</a>
            </div>
            <div class="actions1">
                <a href="delete?id=${user.id}">Delete Profile</a>
            </div>
        </form>

    </c:forEach>



</div>
<div class="con">
    <button onclick="location.href='new';">Create Profile</button>
</div>


</body>
</html>
