package com.chandpur.quiz;

import java.util.List;

public class Quiz {
    private List<Question> questions;

    public Quiz(List<Question> questions) {
        this.questions = questions;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public int getTotalQuestions() {
        return questions.size();
    }
}