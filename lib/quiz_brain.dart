import 'dart:ffi';

import 'package:quizzler_app/question.dart';

class QuizBrain {
  final List<Question> _questionBank = [
    Question(
        q: 'Sea otters have a favorite rock they use to break open food.',
        a: true),
    Question(q: 'Sharks are mammals.', a: false),
    Question(
        q: 'The blue whale is the biggest animal to have ever lived.', a: true),
    Question(q: 'Bats are blind.', a: false),
    Question(q: 'South Africa has one capital.', a: false),
    Question(q: 'The Atlantic Ocean is the biggest ocean on Earth.', a: false),
  ];

  String questionText(int questionNumber) {
    return _questionBank[questionNumber].questiontext;
  }

  bool getCorrectAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }
}
