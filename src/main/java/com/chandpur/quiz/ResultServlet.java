package com.chandpur.quiz;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/result")
public class ResultServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String answer = request.getParameter("answer");

        Integer questionNumber =
                (Integer) session.getAttribute("questionNumber");

        Integer score =
                (Integer) session.getAttribute("score");

        if (questionNumber == null) {
            questionNumber = 1;
        }

        if (score == null) {
            score = 0;
        }

        String[] correctAnswers = {
                "Hilsa",
                "Meghna",
                "Chattogram",
                "Ilish",
                "Meghna",
                "Comilla",
                "1984",
                "Chandpur",
                "Bay of Bengal",
                "Meghna",
                "Hajiganj",
                "Chandpur",
                "Hilsa",
                "Chattogram",
                "Meghna",
                "Faridganj",
                "Ilish",
                "Munshiganj",
                "River",
                "Hilsa"
        };

        if (questionNumber >= 1 &&
                questionNumber <= 20 &&
                correctAnswers[questionNumber - 1].equals(answer)) {

            score++;
        }

        if (questionNumber == 20) {

            session.setAttribute("score", score);

            response.setContentType("text/html;charset=UTF-8");

            response.getWriter().println(
                    "<html>" +
                            "<head><title>Quiz Result</title></head>" +
                            "<body style='font-family:Arial;text-align:center;margin-top:80px;'>" +

                            "<h1 style='color:green;'>Quiz Completed!</h1>" +

                            "<h2>Congratulations, " +
                            session.getAttribute("username") +
                            "!</h2>" +

                            "<h3>Your Final Score</h3>" +

                            "<h1>" + score + " / 20</h1>" +

                            "<br>" +

                            "<a href='restartQuiz'>Play Again</a>" +

                            "</body>" +
                            "</html>"
            );

            return;
        }

        questionNumber++;

        session.setAttribute("questionNumber", questionNumber);
        session.setAttribute("score", score);

        response.sendRedirect("question.jsp");
    }
}