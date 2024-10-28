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

  final postList = [
    {
      "number": "0",
      "color": Colors.green,
    },
    {
      "number": "1",
      "color": Colors.red,
    },
    {
      "number": "2",
      "color": Colors.orange,
    },
    {
      "number": "3",
      "color": Colors.pink,
    },
    {
      "number": "4",
      "color": Colors.amber,
    },
    {
      "number": "5",
      "color": Colors.blueGrey,
    },
    {
      "number": "6",
      "color": Colors.purple,
    },
    {
      "number": "7",
      "color": Colors.blueAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title2"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            number: postList[index]["number"] as String,
            colorData: postList[index]["color"] as Color,
          );
        },
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