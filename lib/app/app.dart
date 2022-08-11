import 'package:flutter/material.dart';

import 'package:wordle_app/wordle/wordle.dart';

class App extends StatelessWidget {
    const App({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Wordle App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
            home: const WordleScreen(),
        );
    }
}