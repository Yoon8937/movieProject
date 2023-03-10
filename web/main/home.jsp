<%@ page import="model.UserDTO" %>
<%@ page import="jdk.jshell.spi.ExecutionControl" %>
<%@ page import="connector.ConnectionMaker" %>
<%@ page import="connector.MySqlConnectionMaker" %>
<%@ page import="controller.UserController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");
        if(logIn == null){
            response.sendRedirect("/login.jsp");
        }
        pageContext.setAttribute("logIn", logIn);

    %>
    <style>
        * { box-sizing:border-box; }
        form {
            width:400px;
            height:500px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:55%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        .input-field {
            width: 300px;
            height: 40px;
            border : 1px solid rgb(89,117,196);
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }
        label {
            width:300px;
            height:30px;
            margin-top :4px;
        }
        button {
            background-color: rgb(89,117,196);
            color : white;
            width:300px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        .title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        .msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
            margin-bottom: 20px;
        }
        .sns-chk {
            margin-top : 5px;
        }
        .title{
            width: 100vw;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;

        }
        .title h1{
            margin: 0 3%;

        }
        .img1{

        }
        .img2{}
        .main form{
            margin-top: 5%;
        }
    </style>
    <title>????????????</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="footer.css">
</head>

<body>
<c:import url="/main/navbar.jsp"/>

<main>
    <div class="title">
        <img class="img1" src="/20cen.png" alt="20?????? ??????">
        <h1>?????? ?????? ????????????</h1>
        <img class="img2" src="/pop.png" alt="popcorn">
    </div>

    <div class="main">
        <form>
            <caption><h3>????????????</h3></caption>
            <button style="margin-top: 90px; margin-bottom: 40px;" type="button" class="btn btn-primary" onclick="location.href='/main/movie/movie_home.jsp'">????????????</button>
            <button style="margin-bottom: 40px;" type="button" class="btn btn-primary" onclick="location.href='/main/theater/theater_main.jsp'">???????????????</button>
            <c:if test="${logIn.rank eq '?????????'}">
                <button type="button" class="btn btn-primary" onclick="location.href='/member/userList.jsp'">????????????[???????????????]</button>
            </c:if>
        </form>
    </div>
</main>

</body>
</html>
