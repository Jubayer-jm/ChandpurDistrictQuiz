package com.chandpur.quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResultDAO {

    // Save quiz result to database
    public static void saveResult(Result result) {

        String sql = "INSERT INTO quiz_results " +
                "(player_name, score, total_questions, percentage, grade) " +
                "VALUES (?, ?, ?, ?, ?)";

        try (
                Connection connection = DatabaseConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)
        ) {

            statement.setString(1, result.getPlayerName());
            statement.setInt(2, result.getScore());
            statement.setInt(3, result.getTotalQuestions());
            statement.setDouble(4, result.getPercentage());
            statement.setString(5, result.getGrade());

            statement.executeUpdate();

            System.out.println("Result saved to database successfully!");

        } catch (SQLException e) {

            System.out.println("Failed to save result!");
            e.printStackTrace();
        }
    }


    // Get all quiz results from database
    public static List<Result> getAllResults() {

        List<Result> results = new ArrayList<>();

        String sql = "SELECT player_name, score, total_questions " +
                "FROM quiz_results ORDER BY id DESC";

        try (
                Connection connection = DatabaseConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery()
        ) {

            while (resultSet.next()) {

                Result result = new Result(
                        resultSet.getString("player_name"),
                        resultSet.getInt("score"),
                        resultSet.getInt("total_questions")
                );

                results.add(result);
            }

        } catch (SQLException e) {

            System.out.println("Failed to load quiz history!");
            e.printStackTrace();
        }

        return results;
    }


    // Get leaderboard - highest score first
    public static List<Result> getLeaderboard() {

        List<Result> results = new ArrayList<>();

        String sql = "SELECT player_name, score, total_questions " +
                "FROM quiz_results " +
                "ORDER BY score DESC, percentage DESC, id ASC";

        try (
                Connection connection = DatabaseConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery()
        ) {

            while (resultSet.next()) {

                Result result = new Result(
                        resultSet.getString("player_name"),
                        resultSet.getInt("score"),
                        resultSet.getInt("total_questions")
                );

                results.add(result);
            }

        } catch (SQLException e) {

            System.out.println("Failed to load leaderboard!");
            e.printStackTrace();
        }

        return results;
    }
}