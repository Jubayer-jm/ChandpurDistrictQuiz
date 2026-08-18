<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String username = request.getParameter("username");

    if (username != null && !username.trim().isEmpty()) {
        session.setAttribute("username", username);
        session.setAttribute("questionNumber", 1);
        session.setAttribute("score", 0);

        response.sendRedirect("question.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Chandpur District Quiz</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 100px;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h1 {
            color: #1a5d1a;
        }

        input {
            width: 80%;
            padding: 12px;
            font-size: 17px;
            margin: 15px 0;
        }

        button {
            padding: 12px 35px;
            font-size: 18px;
            background-color: #1a5d1a;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Chandpur District Quiz</h1>

    <p>Enter your name to start the quiz</p>

    <form method="post">
        <input type="text"
               name="username"
               placeholder="Enter your name"
               required>

        <br>

        <button type="submit">Start Quiz</button>
    </form>

</div>

</body>
</html>