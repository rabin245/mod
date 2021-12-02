import 'package:flutter/material.dart';
import './modCalculator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Modder'),
          centerTitle: true,
        ),
        body: ModCalculator(),
      ),
    );
  }
}
