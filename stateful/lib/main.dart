import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateful',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Stateful'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

// Stateful Widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

// State
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
