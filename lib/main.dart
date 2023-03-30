import 'package:flutter/material.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'Sea otters have a favorite rock they use to break open food.',
    'Sharks are mammals.',
    'The blue whale is the biggest animal to have ever lived.',
    'Bats are blind.',
    'South Africa has one capital.',
    'The Atlantic Ocean is the biggest ocean on Earth.'
  ];
  List<bool> answers = [true, false, true, false, false, false];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  questions[questionNumber],
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                setState(() {
                  questionNumber++;
                });
              },
              child: const Text(
                "True",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink)),
              onPressed: () {
                setState(() {
                  questionNumber++;
                });
              },
              child: const Text(
                "False",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )),

        ///Score keeper icons
        Row(children: scoreKeeper
            /*const [
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],*/
            )
      ],
    );
  }
}
