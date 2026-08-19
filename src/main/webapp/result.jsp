<%@ page import="com.chandpur.quiz.Result" %>

<%
    Result result = (Result) session.getAttribute("finalResult");

    if (result == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Quiz Result</title>

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #0d1117;
            color: #ffffff;
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 70px auto;
            background: #161d29;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
        }

        h1 {
            color: #00c853;
            margin-bottom: 10px;
        }

        h2 {
            margin-bottom: 30px;
        }

        .score {
            font-size: 50px;
            font-weight: bold;
            margin: 25px 0;
        }

        .info {
            font-size: 20px;
            margin: 15px;
        }

        .grade {
            font-size: 28px;
            font-weight: bold;
            color: #ffd740;
        }

        .buttons {
            margin-top: 35px;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            margin: 8px;
            background: #238636;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .btn:hover {
            background: #2ea043;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>🎉 Quiz Completed!</h1>

    <h2>
        Congratulations,
        <%= result.getPlayerName() %>!
    </h2>

    <div class="score">

        <%= result.getScore() %>
        /
        <%= result.getTotalQuestions() %>

    </div>

    <div class="info">

        Percentage:
        <strong>
            <%= String.format("%.2f", result.getPercentage()) %>%
        </strong>

    </div>

    <div class="info">

        Grade:
        <span class="grade">
            <%= result.getGrade() %>
        </span>

    </div>

    <div class="buttons">

        <a class="btn" href="restartQuiz">
            🔄 Play Again
        </a>

        <a class="btn" href="history">
            📜 Quiz History
        </a>

        <a class="btn" href="leaderboard">
            🏆 Leaderboard
        </a>

    </div>

</div>

</body>

</html>