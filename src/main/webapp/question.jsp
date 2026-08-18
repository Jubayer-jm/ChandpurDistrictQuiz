<%@ page contentType="text/html;charset=UTF-8" %>

<%
    Integer questionNumber = (Integer) session.getAttribute("questionNumber");

    if (questionNumber == null) {
        questionNumber = 1;
        session.setAttribute("questionNumber", 1);
        session.setAttribute("score", 0);
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
            margin-top: 50px;
        }

        .container {
            width: 650px;
            margin: auto;
            background: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h1 {
            color: #1a5d1a;
        }

        .question {
            font-size: 22px;
            margin: 25px 0;
        }

        .option {
            display: block;
            width: 80%;
            margin: 12px auto;
            padding: 12px;
            font-size: 17px;
            cursor: pointer;
            border: 1px solid #aaa;
            border-radius: 5px;
            background: #fafafa;
        }

        .option:hover {
            background: #e8f5e8;
        }

        .next-button {
            margin-top: 20px;
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

    <p>Question <%= questionNumber %> of 20</p>

    <form action="result" method="post">

        <% if (questionNumber == 1) { %>

            <div class="question">
                Chandpur is famous for which fish?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Hilsa" required>
                Hilsa
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Rui">
                Rui
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Katla">
                Katla
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Mrigal">
                Mrigal
            </label>

        <% } else if (questionNumber == 2) { %>

            <div class="question">
                What is the main river associated with Chandpur?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Meghna" required>
                Meghna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Karnaphuli">
                Karnaphuli
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Jamuna">
                Jamuna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Teesta">
                Teesta
            </label>

        <% } else if (questionNumber == 3) { %>

            <div class="question">
                Chandpur is located in which division?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Dhaka" required>
                Dhaka
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Chattogram">
                Chattogram
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Sylhet">
                Sylhet
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Rajshahi">
                Rajshahi
            </label>

        <% } else if (questionNumber == 4) { %>

            <div class="question">
                Chandpur district is famous for which traditional food?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Ilish" required>
                Ilish
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Kacchi">
                Kacchi
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Fuchka">
                Fuchka
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Pitha">
                Pitha
            </label>

        <% } else if (questionNumber == 5) { %>

            <div class="question">
                Which river is formed by the meeting of the Padma and Jamuna?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Meghna" required>
                Meghna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Buriganga">
                Buriganga
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Shitalakshya">
                Shitalakshya
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Karnaphuli">
                Karnaphuli
            </label>

        <% } else if (questionNumber == 6) { %>

            <div class="question">
                Which district is Chandpur adjacent to on the east?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Comilla" required>
                Comilla
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Tangail">
                Tangail
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Rajshahi">
                Rajshahi
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Khulna">
                Khulna
            </label>

        <% } else if (questionNumber == 7) { %>

            <div class="question">
                Chandpur became a district in which year?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="1984" required>
                1984
            </label>

            <label class="option">
                <input type="radio" name="answer" value="1971">
                1971
            </label>

            <label class="option">
                <input type="radio" name="answer" value="1990">
                1990
            </label>

            <label class="option">
                <input type="radio" name="answer" value="1965">
                1965
            </label>

        <% } else if (questionNumber == 8) { %>

            <div class="question">
                What is the district headquarters of Chandpur?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Chandpur" required>
                Chandpur
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Hajiganj">
                Hajiganj
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Matlab">
                Matlab
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Faridganj">
                Faridganj
            </label>

        <% } else if (questionNumber == 9) { %>

            <div class="question">
                Which sea is closest to Chandpur through river routes?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Bay of Bengal" required>
                Bay of Bengal
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Arabian Sea">
                Arabian Sea
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Red Sea">
                Red Sea
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Caspian Sea">
                Caspian Sea
            </label>

        <% } else if (questionNumber == 10) { %>

            <div class="question">
                Which river is one of the major rivers of Chandpur?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Meghna" required>
                Meghna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Karnaphuli">
                Karnaphuli
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Sangu">
                Sangu
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Naf">
                Naf
            </label>

        <% } else if (questionNumber == 11) { %>

            <div class="question">
                Which upazila is located in Chandpur district?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Hajiganj" required>
                Hajiganj
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Savar">
                Savar
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Sreemangal">
                Sreemangal
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Mirzapur">
                Mirzapur
            </label>

        <% } else if (questionNumber == 12) { %>

            <div class="question">
                Which city is known as the gateway of Chandpur by river?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Chandpur" required>
                Chandpur
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Dhaka">
                Dhaka
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Sylhet">
                Sylhet
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Rajshahi">
                Rajshahi
            </label>

        <% } else if (questionNumber == 13) { %>

            <div class="question">
                Which fish is strongly associated with Chandpur's identity?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Hilsa" required>
                Hilsa
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Tilapia">
                Tilapia
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Pangasius">
                Pangasius
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Mrigal">
                Mrigal
            </label>

        <% } else if (questionNumber == 14) { %>

            <div class="question">
                Which division does Chandpur belong to?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Chattogram" required>
                Chattogram
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Dhaka">
                Dhaka
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Khulna">
                Khulna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Barishal">
                Barishal
            </label>

        <% } else if (questionNumber == 15) { %>

            <div class="question">
                Which river is particularly important to Chandpur's geography?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Meghna" required>
                Meghna
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Brahmaputra">
                Brahmaputra
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Karnaphuli">
                Karnaphuli
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Teesta">
                Teesta
            </label>

        <% } else if (questionNumber == 16) { %>

            <div class="question">
                Which of these is an upazila of Chandpur?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Faridganj" required>
                Faridganj
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Dhamrai">
                Dhamrai
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Keraniganj">
                Keraniganj
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Kaliganj">
                Kaliganj
            </label>

        <% } else if (questionNumber == 17) { %>

            <div class="question">
                Chandpur is especially famous for which fish market?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Ilish" required>
                Ilish
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Rui">
                Rui
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Katla">
                Katla
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Pangash">
                Pangash
            </label>

        <% } else if (questionNumber == 18) { %>

            <div class="question">
                Which district is located near Chandpur?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Munshiganj" required>
                Munshiganj
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Panchagarh">
                Panchagarh
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Thakurgaon">
                Thakurgaon
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Kurigram">
                Kurigram
            </label>

        <% } else if (questionNumber == 19) { %>

            <div class="question">
                Chandpur is mainly known for its connection with which type of transport?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="River" required>
                River
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Desert">
                Desert
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Mountain">
                Mountain
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Metro">
                Metro
            </label>

        <% } else if (questionNumber == 20) { %>

            <div class="question">
                What is Chandpur particularly famous for?
            </div>

            <label class="option">
                <input type="radio" name="answer" value="Hilsa" required>
                Hilsa
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Tea">
                Tea
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Mango">
                Mango
            </label>

            <label class="option">
                <input type="radio" name="answer" value="Pineapple">
                Pineapple
            </label>

        <% } %>

        <button class="next-button" type="submit">
            <%= questionNumber == 20 ? "Finish Quiz" : "Next Question" %>
        </button>

    </form>

</div>

</body>
</html>
