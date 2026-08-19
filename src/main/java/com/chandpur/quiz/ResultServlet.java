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

    @Override
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

        String username =
                (String) session.getAttribute("username");

        if (questionNumber == null) {
            questionNumber = 1;
        }

        if (score == null) {
            score = 0;
        }

        if (username == null || username.trim().isEmpty()) {
            username = "Guest";
        }

        // =====================================
        // CORRECT ANSWERS
        // =====================================

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

        // =====================================
        // CHECK ANSWER
        // =====================================

        if (questionNumber >= 1
                && questionNumber <= 20
                && answer != null
                && correctAnswers[questionNumber - 1]
                .equals(answer)) {

            score++;
        }

        // =====================================
        // QUIZ COMPLETED
        // =====================================

        if (questionNumber == 20) {

            session.setAttribute("score", score);

            // Create Result object
            Result result = new Result(
                    username,
                    score,
                    20
            );

            // Save result to MySQL
            ResultDAO.saveResult(result);

            // Save result in session
            session.setAttribute("finalResult", result);

            response.sendRedirect("result.jsp");

            return;
        }

        // =====================================
        // NEXT QUESTION
        // =====================================

        questionNumber++;

        session.setAttribute(
                "questionNumber",
                questionNumber
        );

        session.setAttribute(
                "score",
                score
        );

        response.sendRedirect("question.jsp");
    }
}