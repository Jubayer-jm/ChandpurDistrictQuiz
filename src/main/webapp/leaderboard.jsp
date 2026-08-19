<%@ page import="com.chandpur.quiz.Result" %>
<%@ page import="java.util.List" %>

<%
    List<Result> leaderboard =
            (List<Result>) request.getAttribute("leaderboard");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Leaderboard</title>

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #0d1117;
            color: white;
            text-align: center;
        }

        .container {
            max-width: 800px;
            margin: 60px auto;
            background: #161d29;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
        }

        h1 {
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            border-bottom: 1px solid #30363d;
        }

        th {
            background: #238636;
        }

        tr:hover {
            background: #21262d;
        }

        .rank {
            font-weight: bold;
        }

        .btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 20px;
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

    <h1>🏆 Chandpur Quiz Leaderboard</h1>

    <%
        if (leaderboard == null || leaderboard.isEmpty()) {
    %>

        <h3>No quiz results found.</h3>

    <%
        } else {
    %>

    <table>

        <tr>
            <th>Rank</th>
            <th>Player</th>
            <th>Score</th>
            <th>Percentage</th>
        </tr>

        <%
            int rank = 1;

            for (Result result : leaderboard) {
        %>

        <tr>

            <td class="rank">
                <%= rank %>
            </td>

            <td>
                <%= result.getPlayerName() %>
            </td>

            <td>
                <%= result.getScore() %>
                /
                <%= result.getTotalQuestions() %>
            </td>

            <td>
                <%= String.format(
                        "%.2f",
                        result.getPercentage()
                ) %>%
            </td>

        </tr>

        <%
                rank++;
            }
        %>

    </table>

    <%
        }
    %>

    <a class="btn" href="index.jsp">
        🏠 Home
    </a>

    <a class="btn" href="history">
        📜 Quiz History
    </a>

</div>

</body>

</html>