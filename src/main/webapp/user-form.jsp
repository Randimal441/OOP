<%--
    Document   : user-form
    Created on : Sep 11, 2024, 5:02:13 PM
    Author     : Java Programming with Aldrin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>

    <style>
        *{
            padding: 0;
            margin: 0;
            font-family: sans-serif;
        }
        body{
            background-image: url("https://img.freepik.com/free-photo/arrangement-pencils-black-background_23-2148476765.jpg?t=st=1728600926~exp=1728604526~hmac=5adc74f52c1482f264ca4b8cf760528980d3284dc515c6897a908dd6b05eb2c9&w=1060") ;
            background-size:cover;
            background-repeat: no-repeat;
            color: #ffffff;
            text-shadow: 2px 4px 5px rgba(255, 255, 255, 0.27);
        }
        .for{
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 450px;
        }
        .for h1{
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin: 40px 0;
            text-shadow: 2px 4px 5px rgba(255, 255, 255, 0.5);
        }
        .for p{
            font-size: 23px;
            margin: 15px 0;
            font-weight: bold;
        }
        .for input{
            font-size: 16px;
            padding: 15px 10px;
            width: 100%;
            border: 0;
            border-radius: 5px;
            outline: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .for button{
            font-size: 20px;
            font-weight: bold;
            margin: 20px 0;
            padding: 5%;
            border: 0;
            border-radius: 5px ;
            background-color: #fff;
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .for button:hover{
            color: #656464;
        }

    </style>

</head>
<body>
    <div class="for">

        <h1>${user == null ? "Create New Profile" : "Edit User"}</h1>


            <form action="${user == null ? 'insert' : 'update'}" method="post">
                <input  type="hidden" name="id" value="${user != null ? user.id : ''}" />
                <p>User ID:</p>
                <input  type="text" name="uid" value="${user != null ? user.uid : ''}" placeholder="enter user id" required/><br/>
                <p>First Name:</p>
                <input type="text" name="firstname" value="${user != null ? user.firstname : ''}" placeholder="enter first name" required/><br/>
                <p>Last Name:</p>
                <input type="text" name="lastname" value="${user != null ? user.lastname : ''}" placeholder="enter last name" required/><br/>
                <p>Adders:</p>
                <input type="text" name="address" value="${user != null ? user.address : ''}" placeholder="enter address" required/><br/>
                <p>Phone:</p>
                <input type="text" name="phone" value="${user != null ? user.phone : ''}" placeholder="+94 XX XXX XXXX " required/><br/>
                <p>Email:</p>
                <input type="email" name="email" value="${user != null ? user.email : ''}" placeholder="username@gmail.com" required/><br/>

                <button type="submit" value="${user == null ? 'Create' : 'Update'}"> Create </button>

            </form>

        <button onclick="location.href='list';">Go to Profile</button>


    </div>







</body>
</html>