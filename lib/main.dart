import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  bool imageChange = true;

  @override
  Widget build(BuildContext context) {
    final hijikiImage = Image.asset(
      'images/FGN8eoIUUAMLcPu.jpeg',
      width: 300,
      height: 300,
    );
    final tukushiImage = Image.asset(
      'images/FK59D2NaUAAbVqR.jpeg',
      width: 300,
      height: 300,
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: hijikiImage,
              secondChild: tukushiImage,
              duration: const Duration(seconds: 1),
              crossFadeState:
              imageChange ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  imageChange = !imageChange;
                });
              },
              child: const Text('チェンジ'),
            ),
          ],
        ),
      ),
    );
  }
}