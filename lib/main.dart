import 'package:flutter/material.dart';
import 'random_words.dart';

// Here the arrow is given because main is just a funtion with one line.
// The only line here is calling another function, in these cases we
// can use the arrow notation.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Difference between const and final.
  // Const is used when you know a variable represents a constant value and
  // you're not going to re assign it. If its final, you don't have to store a
  // constant value in it, but it can't be reassigned neverthless.
  // More often than not, we use final.
  // final wordPair = WordPair.random();
  // We have to override the build method of the stateless widget
  // to make the app work. The override keyword is not mandatory,
  // but it improves the readability of the code
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme(
                primary: Colors.purple.shade800,
                primaryVariant: Colors.purple.shade900,
                secondary: Colors.green.shade300,
                secondaryVariant: Colors.green.shade400,
                surface: Colors.grey.shade300,
                background: Colors.grey.shade300,
                error: Colors.red.shade100,
                onPrimary: Colors.white,
                onSecondary: Colors.black,
                onSurface: Colors.grey.shade800,
                onBackground: Colors.grey.shade800,
                onError: Colors.grey.shade800,
                brightness: Brightness.light)),
        home: RandomWords());
  }
}
