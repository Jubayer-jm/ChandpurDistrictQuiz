<%@ page import="java.util.List" %>
<%@ page import="com.chandpur.quiz.Result" %>

<%
    List<Result> results =
            (List<Result>) request.getAttribute("results");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Quiz History</title>

    <style>

        body {
            margin: 0;
            padding: 40px;
            font-family: Arial, sans-serif;
            background: #0d1117;
            color: white;
        }

        .container {
            max-width: 900px;
            margin: auto;
        }

        h1 {
            text-align: center;
            color: #00c853;
            margin-bottom: 30px;
        }

        .card {
            background: #161d29;
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 12px;
            border: 1px solid #232c3d;
        }

        .attempt {
            color: #ffd740;
            font-size: 20px;
            font-weight: bold;
        }

        .info {
            margin: 8px 0;
            font-size: 17px;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            margin-top: 25px;
            margin-right: 10px;
            background: #238636;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .btn:hover {
            background: #2ea043;
        }

        .empty {
            text-align: center;
            background: #161d29;
            padding: 30px;
            border-radius: 12px;
            font-size: 20px;
        }

        .grade {
            color: #ffd740;
            font-weight: bold;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>📜 Quiz History</h1>

    <%
        if (results == null || results.isEmpty()) {
    %>

        <div class="empty">
            No quiz history found.
        </div>

    <%
        } else {

            int count = 1;

            for (Result result : results) {
    %>

        <div class="card">

            <div class="attempt">
                Attempt <%= count %>
            </div>

            <div class="info">
                <strong>Player:</strong>
                <%= result.getPlayerName() %>
            </div>

            <div class="info">
                <strong>Score:</strong>
                <%= result.getScore() %>
                /
                <%= result.getTotalQuestions() %>
            </div>

            <div class="info">
                <strong>Percentage:</strong>
                <%= String.format("%.2f",
                        result.getPercentage()) %>%
            </div>

            <div class="info">
                <strong>Grade:</strong>

                <span class="grade">
                    <%= result.getGrade() %>
                </span>

            </div>

        </div>

    <%
                count++;
            }
        }
    %>

    <div style="text-align:center;">

        <a class="btn" href="index.jsp">
            🏠 Home
        </a>

        <a class="btn" href="leaderboard">
            🏆 Leaderboard
        </a>

    </div>

</div>

</body>

</html>