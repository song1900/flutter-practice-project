import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title2"),
      ),
      body: GridView(
        scrollDirection: Axis.horizontal, // 기본값 vertical
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0
        ),
        children: [
          postContainer(number: "1"),
          postContainer(number: "2", colorData: Colors.green),
          postContainer(number: "3", colorData: Colors.deepPurple),
          postContainer(number: "4", colorData: Colors.pinkAccent),
          postContainer(number: "1"),
          postContainer(number: "2", colorData: Colors.green),
          postContainer(number: "3", colorData: Colors.deepPurple),
          postContainer(number: "4", colorData: Colors.pinkAccent),
          postContainer(number: "1"),
          postContainer(number: "2", colorData: Colors.green),
          postContainer(number: "3", colorData: Colors.deepPurple),
          postContainer(number: "4", colorData: Colors.pinkAccent),
          postContainer(number: "1"),
          postContainer(number: "2", colorData: Colors.green),
          postContainer(number: "3", colorData: Colors.deepPurple),
          postContainer(number: "4", colorData: Colors.pinkAccent),
        ],
      )
    );
  }

  Widget postContainer({ String number = "0", Color colorData = Colors.amber}) {
    return Container(
          height: 200,
          color: colorData,
          child: Center(child: Text("Box $number")),
        );
  }
}