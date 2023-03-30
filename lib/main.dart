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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
            flex: 6,
            child: Center(
              child: Text(
                "Questions",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {},
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
              onPressed: () {},
              child: const Text(
                "False",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )),
        Row(
          children: const [
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
