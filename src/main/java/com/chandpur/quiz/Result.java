package com.chandpur.quiz;

public class Result {

    private String playerName;
    private int score;
    private int totalQuestions;

    public Result(String playerName, int score, int totalQuestions) {
        this.playerName = playerName;
        this.score = score;
        this.totalQuestions = totalQuestions;
    }

    public String getPlayerName() {
        return playerName;
    }

    public int getScore() {
        return score;
    }

    public int getTotalQuestions() {
        return totalQuestions;
    }

    public double getPercentage() {
        if (totalQuestions == 0) {
            return 0;
        }

        return (score * 100.0) / totalQuestions;
    }

    public String getGrade() {
        double percentage = getPercentage();

        if (percentage >= 80) {
            return "A+";
        } else if (percentage >= 70) {
            return "A";
        } else if (percentage >= 60) {
            return "A-";
        } else if (percentage >= 50) {
            return "B";
        } else if (percentage >= 40) {
            return "C";
        } else if (percentage >= 33) {
            return "D";
        } else {
            return "F";
        }
    }
}