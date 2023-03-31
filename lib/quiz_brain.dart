import 'package:quizzler_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      'Sea otters have a favorite rock they use to break open food.',
      true,
    ),
    Question('Sharks are mammals.', false),
    Question('The blue whale is the biggest animal to have ever lived.', true),
    Question('Bats are blind.', false),
    Question('South Africa has one capital.', false),
    Question('The Atlantic Ocean is the biggest ocean on Earth.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String questionText() {
    return _questionBank[_questionNumber].questiontext;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
