package com.chandpur.quiz;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        while (true) {

            System.out.println("================================");
            System.out.println("     CHANDPUR DISTRICT QUIZ");
            System.out.println("================================");

            System.out.println("1. Start Quiz");
            System.out.println("2. Exit");

            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();
            scanner.nextLine();

            if (choice == 2) {
                System.out.println("Thank you for playing!");
                break;
            }

            if (choice != 1) {
                System.out.println("Invalid choice!");
                continue;
            }

            System.out.println("\n================================");
            System.out.println("        STARTING QUIZ");
            System.out.println("================================");

            System.out.print("Enter your name: ");
            String name = scanner.nextLine();

            List<Question> questions = new ArrayList<>();

            questions.add(new Question(
                    "Chandpur is famous for which fish?",
                    new String[]{"Hilsa", "Rui", "Katla", "Pangash"},
                    1
            ));

            questions.add(new Question(
                    "Chandpur is located in which division?",
                    new String[]{"Dhaka", "Chattogram", "Sylhet", "Rajshahi"},
                    1
            ));

            questions.add(new Question(
                    "Which river is associated with Chandpur?",
                    new String[]{"Padma", "Meghna", "Jamuna", "Karnaphuli"},
                    2
            ));

            questions.add(new Question(
                    "How many upazilas are there in Chandpur district?",
                    new String[]{"6", "7", "8", "9"},
                    3
            ));

            questions.add(new Question(
                    "What is Chandpur popularly known as?",
                    new String[]{"City of Rivers", "City of Hilsa", "City of Lakes", "City of Hills"},
                    2
            ));

            questions.add(new Question(
                    "Which upazila is known for Matlab?",
                    new String[]{"Matlab North", "Haimchar", "Kachua", "Faridganj"},
                    1
            ));

            questions.add(new Question(
                    "Which river is very important to Chandpur?",
                    new String[]{"Meghna", "Teesta", "Surma", "Karnaphuli"},
                    1
            ));

            questions.add(new Question(
                    "Chandpur district is famous for which market?",
                    new String[]{"Hajiganj Bazar", "Boro Station Fish Ghat", "New Market", "Karwan Bazar"},
                    2
            ));

            questions.add(new Question(
                    "Which district is near Chandpur?",
                    new String[]{"Rangpur", "Lakshmipur", "Panchagarh", "Thakurgaon"},
                    2
            ));

            questions.add(new Question(
                    "Chandpur is located in which part of Bangladesh?",
                    new String[]{"North-west", "South-east", "North-east", "South-west"},
                    2
            ));

            questions.add(new Question(
                    "Which upazila is part of Chandpur district?",
                    new String[]{"Hajiganj", "Savar", "Dohar", "Keraniganj"},
                    1
            ));

            questions.add(new Question(
                    "Which upazila is part of Chandpur district?",
                    new String[]{"Shahrasti", "Tongi", "Kapasia", "Sakhipur"},
                    1
            ));

            questions.add(new Question(
                    "Which upazila is part of Chandpur district?",
                    new String[]{"Haimchar", "Dhamrai", "Saturia", "Manikganj"},
                    1
            ));

            questions.add(new Question(
                    "Which upazila is part of Chandpur district?",
                    new String[]{"Kachua", "Rupganj", "Araihazar", "Sonargaon"},
                    1
            ));

            questions.add(new Question(
                    "Which district is adjacent to Chandpur?",
                    new String[]{"Lakshmipur", "Panchagarh", "Thakurgaon", "Kurigram"},
                    1
            ));

            questions.add(new Question(
                    "Which river is very important to Chandpur?",
                    new String[]{"Meghna", "Teesta", "Dharla", "Karatoya"},
                    1
            ));

            questions.add(new Question(
                    "Chandpur is situated in which country?",
                    new String[]{"India", "Bangladesh", "Nepal", "Bhutan"},
                    2
            ));

            questions.add(new Question(
                    "Which activity is important in Chandpur?",
                    new String[]{"Fishing", "Tea cultivation", "Coal mining", "Jute mining"},
                    1
            ));

            questions.add(new Question(
                    "Which fish is strongly associated with Chandpur?",
                    new String[]{"Hilsa", "Rui", "Katla", "Pangash"},
                    1
            ));

            questions.add(new Question(
                    "Which place in Chandpur is famous for Hilsa fish?",
                    new String[]{"Boro Station", "Kamalapur", "Gabtoli", "Sadarghat"},
                    1
            ));

            Quiz quiz = new Quiz(questions);
            Player player = new Player(name);

            System.out.println("\nStarting Quiz...\n");

            for (int i = 0; i < quiz.getTotalQuestions(); i++) {

                Question question = quiz.getQuestions().get(i);

                System.out.println("Q" + (i + 1) + ":");
                System.out.println(question.getQuestionText());

                String[] options = question.getOptions();

                for (int j = 0; j < options.length; j++) {
                    System.out.println((j + 1) + ". " + options[j]);
                }

                int answer;

                while (true) {

                    System.out.print("Your answer (1-4): ");
                    answer = scanner.nextInt();

                    if (answer >= 1 && answer <= 4) {
                        break;
                    }

                    System.out.println(
                            "Invalid answer! Please enter a number between 1 and 4."
                    );
                }

                if (answer == question.getCorrectAnswer()) {
                    System.out.println("Correct!\n");
                    player.addScore();
                } else {
                    System.out.println("Wrong!\n");
                }
            }

            Result result = new Result(
                    player.getName(),
                    player.getScore(),
                    quiz.getTotalQuestions()
            );

            System.out.println("================================");
            System.out.println("           RESULT");
            System.out.println("================================");

            System.out.println("Player: " + result.getPlayerName());

            System.out.println("Score: " + result.getScore()
                    + "/" + result.getTotalQuestions());

            System.out.printf(
                    "Percentage: %.2f%%\n",
                    result.getPercentage()
            );

            System.out.println("Grade: " + result.getGrade());

            if (result.getPercentage() >= 80) {
                System.out.println(
                        "Excellent! You are very knowledgeable about Chandpur."
                );
            } else if (result.getPercentage() >= 60) {
                System.out.println(
                        "Very Good! You have good knowledge about Chandpur."
                );
            } else if (result.getPercentage() >= 40) {
                System.out.println(
                        "Good effort! Keep learning about Chandpur."
                );
            } else {
                System.out.println(
                        "Keep practicing and learn more about Chandpur."
                );
            }

            System.out.println("================================");

            System.out.println("\n1. Play Again");
            System.out.println("2. Exit");

            System.out.print("Enter your choice: ");
            int again = scanner.nextInt();
            scanner.nextLine();

            if (again == 2) {
                System.out.println("\nThank you for playing!");
                break;
            }

            if (again != 1) {
                System.out.println("\nInvalid choice. Exiting...");
                break;
            }

            System.out.println();
        }

        scanner.close();
    }
}