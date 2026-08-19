package com.chandpur.quiz;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/history")
public class HistoryServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Get all quiz results from database
        List<Result> results = ResultDAO.getAllResults();

        // Send results to history.jsp
        request.setAttribute("results", results);

        request.getRequestDispatcher("history.jsp")
                .forward(request, response);
    }
}