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
      "title": "Sample Title 1",
      "color": Colors.green,
    },
    {
      "title": "Sample Title 2",
      "color": Colors.red,
    },
    {
      "title": "Sample Title 3",
      "color": Colors.orange,
    },
    {
      "title": "Sample Title 4",
      "color": Colors.blue,
    },
    {
      "title": "Sample Title 5",
      "color": Colors.purple,
    },
    {
      "title": "Sample Title 6",
      "color": Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Drawer Header Part"),
          ),
          ListTile(
            title: Text("Menu 1"),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            title: postList[index]["title"] as String,
            colorData: postList[index]["color"] as Color,
          );
        },
      ),
      /*
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => print("Text Button Clicked"),
              child: const Text("TextButton")
              ),
              GestureDetector(
                onTap: () => print("GestureDetector used."),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              )
          ],
        )
      ),
      */
      /*
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 50, left: 50),
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 100, left: 100),
              color: Colors.green,
            ),
          ],
        ),
        /*
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.purple,
                ),
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
        */
      ),
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Cliked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}