<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chandpur District Quiz</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 80px;
        }

        .container {
            width: 600px;
            margin: auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h1 {
            color: #1a5d1a;
        }

        .start-button {
            padding: 12px 30px;
            font-size: 18px;
            background-color: #1a5d1a;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .start-button:hover {
            background-color: #0d3d0d;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Chandpur District Quiz</h1>

    <h2>
        Welcome, <%= session.getAttribute("username") %>!
    </h2>

    <p>Test your knowledge about Chandpur District.</p>

    <br>

    <form action="startQuiz" method="get">
        <button class="start-button" type="submit">
            Start Quiz
        </button>
    </form>

</div>

</body>
</html>

