<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/25/2024
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="styles/Home.css" type="text/css"/>
    <link rel="stylesheet" href="styles/menustyle.css" type="text/css"/>
    <script src="Home.js" ></script>
    <script type="text/javascript">
        let nextBtn = document.querySelector('.next')
        let prevBtn = document.querySelector('.prev')

        let slider = document.querySelector('.slider')
        let sliderList = slider.querySelector('.slider .list')
        let thumbnail = document.querySelector('.slider .thumbnail')
        let thumbnailItems = thumbnail.querySelectorAll('.item')

        thumbnail.appendChild(thumbnailItems[0])

        // Function for next button
        nextBtn.onclick = function() {
            moveSlider('next')
        }


        // Function for prev button
        prevBtn.onclick = function() {
            moveSlider('prev')
        }


        function moveSlider(direction) {
            let sliderItems = sliderList.querySelectorAll('.item')
            let thumbnailItems = document.querySelectorAll('.thumbnail .item')

            if(direction === 'next'){
                sliderList.appendChild(sliderItems[0])
                thumbnail.appendChild(thumbnailItems[0])
                slider.classList.add('next')
            } else {
                sliderList.prepend(sliderItems[sliderItems.length - 1])
                thumbnail.prepend(thumbnailItems[thumbnailItems.length - 1])
                slider.classList.add('prev')
            }


            slider.addEventListener('animationend', function() {
                if(direction === 'next'){
                    slider.classList.remove('next')
                } else {
                    slider.classList.remove('prev')
                }
            }, {once: true}) // Remove the event listener after it's triggered once
        }

    </script>


    <style>

        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

        .navdiv{
            width: 100%;
            height: 70px;
            top: 10%;
            left: 0;
            display:flex;
            align-items: center;
            justify-content: space-between;
            background-color:rgb(241, 254, 241) ;
            border-radius: 10px;
            margin-bottom: 0.3%;

        }

        .logo{
            top: 10%;
        }

        .logo img{

            width : 115px;
            height : 100px;
            margin-top: -10px;
            margin-left: 15%;
            margin: 10%;
            border-radius: 50%;
        }


        .navbar li{
            list-style: none;
            padding: 0px;
            margin : 0px;
            overflow: hidden;
            float:left;
        }

        .navbar a{
            font-size: medium;
            font-weight: 650;
            color: black;
            text-decoration: none;
            padding: 15px;
            display: inline-block;
            text-align: center;


        }

        .navbar li:hover{
            background-color: #548363;
            color:white;
            transition:0.6s;
            border-radius: 25px;
        }


        .buttons {
            background-color: #548363;
            margin-left: 10px;
            border: 0px;
            border-radius: 25px;
            padding: 1px;
            width: 120px;
            transition: box-shadow 0.25s;
        }

        .buttons a{
            color: white;
            font-family:'Cinzel';
            font-weight: bold;
        }

        .buttons:hover{
            box-shadow : 0 0 8px rgb(132, 158, 136);
            border-radius: 30px;
            padding: 5px;
            width: 120px;
        }




        /*Footer styling*/
        .footer {
            width: 100%;
            height: 250px;
            margin-top: 0.3%;
            bottom: -50%;
            left: 0px;
            position:sticky;
            display:flex;
            align-items: center;
            background-color:rgb(164, 189, 164) ;
        }


        .table {
            border: 0;
            padding: 50px;
            margin-left: 24%;
            margin-top: 10%;
        }

        .table td{
            width: 59px;
        }

        .table img{

            width: 30px;
            height: 30px;
        }

        body{
            margin: 0;
            background-color: #000;
            color: #cb0000;
            font-family: Poppins;
            font-size: 12px;
        }

        a{
            text-decoration: none;
        }

        header{
            width: 1140px;
            max-width: 80%;
            margin: auto;
            height: 50px;
            display: flex;
            align-items: center;
            position: relative;
            z-index: 100;
        }

        header a{
            color: #000000;
            margin-right: 5px;
            padding: 5px 10px;
            transition: 0.2s;
        }

        a.active{
            background: #000000cb;
            border-radius: 2px;
        }

        header a:hover{
            background: #14ff72cb;
            border-radius: 2px;
        }


        /* slider section  */

        .slider{
            height: 100vh;
            margin-top: -17px;
            width: 100vw;
            overflow: hidden;
            position: relative;
        }
        .slider .list .item{
            width: 100%;
            height: 100%;
            position: absolute;
            inset: 0 0 0 0;
        }
        .slider .list .item img{
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .slider .list .item .content{
            position: absolute;
            top: 20%;
            width: 1140px;
            max-width: 80%;
            left: 50%;
            transform: translateX(-50%);
            padding-right: 30%;
            box-sizing: border-box;
            color: #000000;
            text-shadow: 0 5px 10px rgba(250, 250, 250, 0.267);
        }

        .slider .list .item .content .title,
        .slider .list .item .content .type{
            font-size: 5em;
            font-weight: bold;
            line-height: 1.3em;
        }

        .slider .list .item .type{
            color: #000000cb;
        }
        .slider .list .item .button{
            display: grid;
            grid-template-columns: repeat(2, 130px);
            grid-template-rows: 40px;
            gap: 5px;
            margin-top: 20px;
        }
        .slider .list .item .button button{
            border: none;
            background-color: #fefbfb;
            font-family: Poppins;
            font-weight: 500;
            cursor: pointer;
            transition: 0.4s;
            letter-spacing: 2px;
        }


        .slider .list .item .button button:hover{
            letter-spacing: 3px;
        }
        .slider .list .item .button button:nth-child(2){
            background-color: transparent;
            border: 1px solid #fff;
            color: #eee;
        }





        /* Thumbnail Section  */
        .thumbnail{
            position: absolute;
            bottom: 50px;
            left: 50%;
            width: max-content;
            z-index: 100;
            display: flex;
            gap: 20px;
        }

        .thumbnail .item{
            width: 150px;
            height: 220px;
            flex-shrink: 0;
            position: relative;
        }

        .thumbnail .item img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 20px;
            box-shadow: 5px 0 15px rgba(171, 60, 60, 0.3);
        }


        /* nextPrevArrows Section  */
        .nextPrevArrows{
            position: absolute;
            top: 80%;
            right: 52%;
            z-index: 100;
            width: 300px;
            max-width: 30%;
            display: flex;
            gap: 10px;
            align-items: center;
        }
        .nextPrevArrows button{
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #000000cb;
            border: none;
            color: #fff;
            font-family: monospace;
            font-weight: 600;
            transition: .5s;
            cursor: pointer;
        }
        .nextPrevArrows button:hover{
            background-color: #564c4c;
            color: #000;
        }

        /* Animation Part */
        .slider .list .item:nth-child(1){
            z-index: 1;
        }


        /* animation text in first item */
        .slider .list .item:nth-child(1) .content .title,
        .slider .list .item:nth-child(1) .content .type,
        .slider .list .item:nth-child(1) .content .description,
        .slider .list .item:nth-child(1) .content .buttons
        {
            transform: translateY(50px);
            filter: blur(20px);
            opacity: 0;
            animation: showContent .5s 1s linear 1 forwards;
        }
        @keyframes showContent{
            to{
                transform: translateY(0px);
                filter: blur(0px);
                opacity: 1;
            }
        }
        .slider .list .item:nth-child(1) .content .title{
            animation-delay: 0.4s !important;
        }
        .slider .list .item:nth-child(1) .content .type{
            animation-delay: 0.6s !important;
        }
        .slider .list .item:nth-child(1) .content .description{
            animation-delay: 0.8s !important;
        }
        .slider .list .item:nth-child(1) .content .buttons{
            animation-delay: 1s !important;
        }




        /* Animation for next button click */
        .slider.next .list .item:nth-child(1) img{
            width: 150px;
            height: 220px;
            position: absolute;
            bottom: 50px;
            left: 50%;
            border-radius: 30px;
            animation: showImage .5s linear 1 forwards;
        }

        @keyframes showImage{
            to{
                bottom: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 0;
            }
        }

        .slider.next .thumbnail .item:nth-last-child(1){
            overflow: hidden;
            animation: showThumbnail .5s linear 1 forwards;
        }
        .slider.prev .list .item img{
            z-index: 100;
        }


        @keyframes showThumbnail{
            from{
                width: 0;
                opacity: 0;
            }
        }


        .slider.next .thumbnail{
            animation: effectNext .5s linear 1 forwards;
        }

        @keyframes effectNext{
            from{
                transform: translateX(150px);
            }
        }



        /* Animation for prev button click */
        .slider.prev .list .item:nth-child(2){
            z-index: 2;
        }

        .slider.prev .list .item:nth-child(2) img{
            animation: outFrame 0.5s linear 1 forwards;
            position: absolute;
            bottom: 0;
            left: 0;
        }
        @keyframes outFrame{
            to{
                width: 150px;
                height: 220px;
                bottom: 50px;
                left: 50%;
                border-radius: 20px;
            }
        }

        .slider.prev .thumbnail .item:nth-child(1){
            overflow: hidden;
            opacity: 0;
            animation: showThumbnail .5s linear 1 forwards;
        }
        .slider.next .nextPrevArrows button,
        .slider.prev .nextPrevArrows button{
            pointer-events: none;
        }


        .slider.prev .list .item:nth-child(2) .content .title,
        .slider.prev .list .item:nth-child(2) .content .type,
        .slider.prev .list .item:nth-child(2) .content .description,
        .slider.prev .list .item:nth-child(2) .content .buttons
        {
            animation: contentOut 1.5s linear 1 forwards!important;
        }

        @keyframes contentOut{
            to{
                transform: translateY(-150px);
                filter: blur(20px);
                opacity: 0;
            }
        }
        @media screen and (max-width: 678px) {
            .slider .list .item .content{
                padding-right: 0;
            }
            .slider .list .item .content .title{
                font-size: 50px;
            }
        }

    </style>
</head>
<body>

<header>

</header>

<div class = "navdiv">
    <div class = "logo"> <a href = "Home.jsp"><img src = "./images/SLIIT%20IMS.png"></a></div>
    <nav class = "navbar">
        <ul>
            <li><a href = "Home.jsp">Home</a></li>
            <li><a href = "">Club & Society</a></li>
            <li><a href = "">Event & News</a></li>
            <li><a href = "">Sports</a></li>
            <li><a href = "">Contact Us</a></li>
            <li><a href = "">About Us</a></li>
            <button class="buttons"><a href = "">Register</a></button>
            <button class="buttons"><a href = "">Login</a></button>
            <button class="buttons"><a href = "">Profile</a></button>
        </ul>
    </nav>
</div>

<br>


<div class="slider">


    <div class="list">

        <div class="item">
            <img src="./images/pexels-photo-2132891.jpeg" alt="">

            <div class="content">
                <div class="title" style="font-size: 100px; margin-top: -50px ">Welcome to SLIIT School</div>

                <div class="description"style="font-size: 30px;color: aliceblue">
                    Education is the key to Unlocking the world ,A Passport to freedom.

                </div>
                <div class="button">
                    <button>LOGIN</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="./images/img7.jpg" alt="">

            <div class="content">
                <div class="title"style="font-size: 80px;color: aliceblue;">Clubs</div>
                <div class="type"style="font-size: 80px;color: aliceblue;">& Societies</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    School clubs and societies provide students with valuable opportunities to explore their interests, develop new skills, and foster a sense of community. These extracurricular groups, ranging from academic societies to sports teams and cultural clubs, help students build leadership, teamwork, and social skills outside the classroom. Participation in such activities not only enhances students' personal growth but also enriches their overall educational experience, preparing them for future challenges in both academic and professional settings.
                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="./images/img5.jpg" alt="">

            <div class="content">
                <div class="title"style="font-size: 80px;color: aliceblue;">Sports</div>
                <div class="type"style="font-size: 80px;color: aliceblue;">with Leadership</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    Sports play a vital role in developing leadership skills by promoting teamwork, discipline, and strategic thinking. Athletes often find themselves in situations that require quick decision-making, effective communication, and the ability to motivate others—all key qualities of strong leaders. Through sports, individuals learn to take responsibility, lead by example, and handle both success and failure with grace. These experiences help shape confident and resilient leaders, equipped to tackle challenges both on and off the field.

                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="./images/free-photo-of-audience-standing-with-arms-raised.jpeg" alt="">

            <div class="content">
                <div class="title" style = "font-size: 80px; color: aliceblue;">Event</div>
                <div class="type"style = "font-size: 80px; color: aliceblue;">& News</div>
                <div class="description"style="font-size: 16px; color: aliceblue">
                    School events and news serve as a dynamic platform for celebrating student achievements, fostering community spirit, and keeping everyone informed about important updates. Whether it's academic milestones, cultural festivals, or sports competitions, these events bring the school community together and highlight the diverse talents within it. Regular updates through newsletters or announcements keep students, parents, and staff engaged and aware of upcoming activities, fostering a sense of unity and pride in the school's accomplishments.
                </div>
                <div class="button">
                    <button>Explore</button>
                </div>
            </div>
        </div>

    </div>


    <div class="thumbnail">

        <div class="item">
            <img src="./images/pexels-photo-2132891.jpeg" alt="">
        </div>
        <div class="item">
            <img src="./images/img7.jpg" alt="">
        </div>
        <div class="item">
            <img src="./images/img5.jpg" alt="">
        </div>
        <div class="item">
            <img src="./images/free-photo-of-audience-standing-with-arms-raised.jpeg" alt="">
        </div>

    </div>


    <div class="nextPrevArrows">
        <button class="prev"> < </button>
        <button class="next"> > </button>
    </div>


</div>

<script src="Home.js"></script>


<footer>
    <div class="footer" >
        <div style = "height:250px; width: 460px; float:left; position: absolute; left: 0%; margin-left: inherit;">
            <table class = "table">
                <tr>
                    <td><a href = "https://www.instagram.com/sliitims_official_/" target="_blank"><img src = "images/3.png" title="visit our instagram page"></a></td>
                    <td><a href = "https://www.facebook.com/share/gMEFjxw3TwxU4eLd/?mibextid=LQQJ4d" target="_blank"><img src = "images/1.png" title="visit our facebook page"></a></td>
                    <td><a href = "https://twitter.com/officialFoodify" target="_blank"><img src = "images/2.png" title="visit our twitter page"></a></td>
                    <td><img src = "images/4.png" title="Contact us through Whatsapp : +94(76) 441 4442"></td>
                </tr>
            </table>

        </div>

        <div style = "height:250px; width: 600px; float:left; align-content: center; position: absolute; left:30%;">
            <a  href = "home.html"><img src = "images/SLIIT IMS.png" style = "width: 220px ; height:180px; margin-left: 29%; border-radius: 10% ; " ></a>
            <p style = "font-weight: 500; margin-left: 29%; color: rgb(47, 54, 66);">©2024 SliiIMS Inc. All Rights Reserved</p>

        </div>

        <div style = "height:250px; width: 460px; float:left;align-content: center; position: absolute; left:70%; color: black;font-size: medium;">

            <ul type = "none">
                <li>✆ +94(76) 441 4442</li>
                <li>✆ +94(76) 369 7342</li>
                <li>☏ +94(11) 551 7723</li>
                <li>✉ info@sliitims.com</li>
                <li>🔗<a href = "Home.jsp" style = "text-decoration: none; color: rgb(41, 40, 40);"> www.SliiIMS.com</a></li>
                <br>
                <li><a href = "#" style = "text-decoration:underline; color: rgb(62, 62, 63);">Give Us Your Feedback!</a></li>

            </ul>
        </div>
    </div>
</footer>
</body>
</html>
